package com.fasterxml.jackson.databind.ext;

import androidx.print.PrintHelper$$ExternalSyntheticApiModelOutline0;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.deser.std.StdScalarDeserializer;
import java.io.File;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.nio.file.FileSystemNotFoundException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.spi.FileSystemProvider;
import java.util.Iterator;
import java.util.ServiceConfigurationError;
import java.util.ServiceLoader;

/* JADX INFO: loaded from: classes.dex */
public class NioPathDeserializer extends StdScalarDeserializer<Path> {
    private static final boolean areWindowsFilePathsSupported;
    private static final long serialVersionUID = 1;

    static {
        boolean z = false;
        for (File file : File.listRoots()) {
            String path = file.getPath();
            if (path.length() >= 2 && Character.isLetter(path.charAt(0)) && path.charAt(1) == ':') {
                z = true;
                break;
            }
        }
        areWindowsFilePathsSupported = z;
    }

    public NioPathDeserializer() {
        super((Class<?>) PrintHelper$$ExternalSyntheticApiModelOutline0.m());
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public Path deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        if (!jsonParser.hasToken(JsonToken.VALUE_STRING)) {
            return PrintHelper$$ExternalSyntheticApiModelOutline0.m79m(deserializationContext.handleUnexpectedToken(PrintHelper$$ExternalSyntheticApiModelOutline0.m(), jsonParser));
        }
        String text = jsonParser.getText();
        if (text.indexOf(58) < 0) {
            return Paths.get(text, new String[0]);
        }
        if (areWindowsFilePathsSupported && text.length() >= 2 && Character.isLetter(text.charAt(0)) && text.charAt(1) == ':') {
            return Paths.get(text, new String[0]);
        }
        try {
            URI uri = new URI(text);
            try {
                return Paths.get(uri);
            } catch (FileSystemNotFoundException e) {
                try {
                    String scheme = uri.getScheme();
                    Iterator it = ServiceLoader.load(PrintHelper$$ExternalSyntheticApiModelOutline0.m$1()).iterator();
                    while (it.hasNext()) {
                        FileSystemProvider fileSystemProviderM82m = PrintHelper$$ExternalSyntheticApiModelOutline0.m82m(it.next());
                        if (fileSystemProviderM82m.getScheme().equalsIgnoreCase(scheme)) {
                            return fileSystemProviderM82m.getPath(uri);
                        }
                    }
                    return PrintHelper$$ExternalSyntheticApiModelOutline0.m79m(deserializationContext.handleInstantiationProblem(handledType(), text, e));
                } catch (ServiceConfigurationError e2) {
                    e2.addSuppressed(e);
                    return PrintHelper$$ExternalSyntheticApiModelOutline0.m79m(deserializationContext.handleInstantiationProblem(handledType(), text, e2));
                }
            } catch (Exception e3) {
                return PrintHelper$$ExternalSyntheticApiModelOutline0.m79m(deserializationContext.handleInstantiationProblem(handledType(), text, e3));
            }
        } catch (URISyntaxException e4) {
            return PrintHelper$$ExternalSyntheticApiModelOutline0.m79m(deserializationContext.handleInstantiationProblem(handledType(), text, e4));
        }
    }
}
