.class public Lio/github/lazyimmortal/sesame/ui/ListDialog;
.super Ljava/lang/Object;
.source "ListDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static btn_find_last:Landroid/widget/Button;

.field static btn_find_next:Landroid/widget/Button;

.field static btn_select_all:Landroid/widget/Button;

.field static btn_select_invert:Landroid/widget/Button;

.field private static dismissCallback:Ljava/lang/Runnable;

.field private static fwDontCollectSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static fwEnergyCmpPosition:I

.field private static fwEnergyFieldPosition:I

.field static hasCount:Ljava/lang/Boolean;

.field private static isFriendWatchList:Z

.field static layout_batch_process:Landroid/widget/RelativeLayout;

.field static listDialog:Landroidx/appcompat/app/AlertDialog;

.field static listType:Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;

.field static lv_list:Landroid/widget/ListView;

.field static oneClickText:Landroid/widget/EditText;

.field static searchText:Landroid/widget/EditText;

.field private static selectModelFieldFunc:Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc;
    .locals 1

    .line 61
    sget-object v0, Lio/github/lazyimmortal/sesame/ui/ListDialog;->selectModelFieldFunc:Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc;

    return-object v0
.end method

.method private static getListView(Landroid/content/Context;)Landroid/view/View;
    .locals 6

    .line 207
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lio/github/lazyimmortal/sesame/R$layout;->dialog_list:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 209
    sget v1, Lio/github/lazyimmortal/sesame/R$id;->btn_find_last:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    sput-object v1, Lio/github/lazyimmortal/sesame/ui/ListDialog;->btn_find_last:Landroid/widget/Button;

    .line 210
    sget v1, Lio/github/lazyimmortal/sesame/R$id;->btn_find_next:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    sput-object v1, Lio/github/lazyimmortal/sesame/ui/ListDialog;->btn_find_next:Landroid/widget/Button;

    .line 211
    sget v1, Lio/github/lazyimmortal/sesame/R$id;->btn_select_all:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    sput-object v1, Lio/github/lazyimmortal/sesame/ui/ListDialog;->btn_select_all:Landroid/widget/Button;

    .line 212
    sget v1, Lio/github/lazyimmortal/sesame/R$id;->btn_select_invert:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    sput-object v1, Lio/github/lazyimmortal/sesame/ui/ListDialog;->btn_select_invert:Landroid/widget/Button;

    .line 214
    new-instance v1, Lio/github/lazyimmortal/sesame/ui/ListDialog$1;

    invoke-direct {v1}, Lio/github/lazyimmortal/sesame/ui/ListDialog$1;-><init>()V

    .line 239
    sget-object v2, Lio/github/lazyimmortal/sesame/ui/ListDialog;->btn_find_last:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    sget-object v2, Lio/github/lazyimmortal/sesame/ui/ListDialog;->btn_find_next:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    new-instance v1, Lio/github/lazyimmortal/sesame/ui/ListDialog$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lio/github/lazyimmortal/sesame/ui/ListDialog$$ExternalSyntheticLambda7;-><init>()V

    .line 251
    sget-object v2, Lio/github/lazyimmortal/sesame/ui/ListDialog;->btn_select_all:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    sget-object v2, Lio/github/lazyimmortal/sesame/ui/ListDialog;->btn_select_invert:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    sget v1, Lio/github/lazyimmortal/sesame/R$id;->cb_filter_shield:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 256
    sget v2, Lio/github/lazyimmortal/sesame/R$id;->cb_filter_dontcollect:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 257
    sget v3, Lio/github/lazyimmortal/sesame/R$id;->cb_filter_single:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 258
    new-instance v4, Lio/github/lazyimmortal/sesame/ui/ListDialog$$ExternalSyntheticLambda8;

    invoke-direct {v4, v1, v2, v3}, Lio/github/lazyimmortal/sesame/ui/ListDialog$$ExternalSyntheticLambda8;-><init>(Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V

    if-eqz v1, :cond_0

    .line 264
    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    if-eqz v2, :cond_1

    .line 267
    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_1
    if-eqz v3, :cond_2

    .line 270
    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 274
    :cond_2
    sget v1, Lio/github/lazyimmortal/sesame/R$id;->tv_fw_energy_field:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 275
    sget v2, Lio/github/lazyimmortal/sesame/R$id;->tv_fw_energy_cmp:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 276
    sget v3, Lio/github/lazyimmortal/sesame/R$id;->et_fw_energy_value:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 277
    new-instance v4, Lio/github/lazyimmortal/sesame/ui/ListDialog$$ExternalSyntheticLambda9;

    invoke-direct {v4, v3, v0}, Lio/github/lazyimmortal/sesame/ui/ListDialog$$ExternalSyntheticLambda9;-><init>(Landroid/widget/EditText;Landroid/view/View;)V

    if-eqz v1, :cond_3

    .line 296
    new-instance v5, Lio/github/lazyimmortal/sesame/ui/ListDialog$$ExternalSyntheticLambda10;

    invoke-direct {v5, v1, v4}, Lio/github/lazyimmortal/sesame/ui/ListDialog$$ExternalSyntheticLambda10;-><init>(Landroid/widget/TextView;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    if-eqz v2, :cond_4

    .line 312
    new-instance v1, Lio/github/lazyimmortal/sesame/ui/ListDialog$$ExternalSyntheticLambda11;

    invoke-direct {v1, v2, v4}, Lio/github/lazyimmortal/sesame/ui/ListDialog$$ExternalSyntheticLambda11;-><init>(Landroid/widget/TextView;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    if-eqz v3, :cond_5

    .line 328
    new-instance v1, Lio/github/lazyimmortal/sesame/ui/ListDialog$2;

    invoke-direct {v1, v4}, Lio/github/lazyimmortal/sesame/ui/ListDialog$2;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 342
    :cond_5
    sget v1, Lio/github/lazyimmortal/sesame/R$id;->one_click_setup:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    sput-object v1, Lio/github/lazyimmortal/sesame/ui/ListDialog;->oneClickText:Landroid/widget/EditText;

    .line 343
    new-instance v2, Lio/github/lazyimmortal/sesame/ui/ListDialog$$ExternalSyntheticLambda12;

    invoke-direct {v2}, Lio/github/lazyimmortal/sesame/ui/ListDialog$$ExternalSyntheticLambda12;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 381
    sget-object v1, Lio/github/lazyimmortal/sesame/ui/ListDialog;->hasCount:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_6

    .line 382
    sget-object v1, Lio/github/lazyimmortal/sesame/ui/ListDialog;->oneClickText:Landroid/widget/EditText;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 385
    :cond_6
    sget v1, Lio/github/lazyimmortal/sesame/R$id;->edt_find:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    sput-object v1, Lio/github/lazyimmortal/sesame/ui/ListDialog;->searchText:Landroid/widget/EditText;

    .line 387
    new-instance v2, Lio/github/lazyimmortal/sesame/ui/ListDialog$3;

    invoke-direct {v2}, Lio/github/lazyimmortal/sesame/ui/ListDialog$3;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 401
    sget v1, Lio/github/lazyimmortal/sesame/R$id;->lv_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    sput-object v1, Lio/github/lazyimmortal/sesame/ui/ListDialog;->lv_list:Landroid/widget/ListView;

    .line 402
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->getClear(Landroid/content/Context;)Lio/github/lazyimmortal/sesame/ui/ListAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 403
    sget-object v1, Lio/github/lazyimmortal/sesame/ui/ListDialog;->lv_list:Landroid/widget/ListView;

    new-instance v2, Lio/github/lazyimmortal/sesame/ui/ListDialog$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0}, Lio/github/lazyimmortal/sesame/ui/ListDialog$$ExternalSyntheticLambda13;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 483
    sget-object v1, Lio/github/lazyimmortal/sesame/ui/ListDialog;->lv_list:Landroid/widget/ListView;

    new-instance v2, Lio/github/lazyimmortal/sesame/ui/ListDialog$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lio/github/lazyimmortal/sesame/ui/ListDialog$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-object v0
.end method

.method static synthetic lambda$getListView$10(Landroid/widget/EditText;Lio/github/lazyimmortal/sesame/entity/IdAndName;Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p4, -0x1

    if-ne p5, p4, :cond_3

    .line 442
    invoke-virtual {p0}, Landroid/widget/EditText;->length()I

    move-result p4

    const/4 p5, 0x0

    if-lez p4, :cond_0

    .line 444
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    return-void

    :cond_0
    const/4 p0, 0x0

    .line 450
    :goto_0
    sget-object p4, Lio/github/lazyimmortal/sesame/ui/ListDialog;->selectModelFieldFunc:Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc;

    iget-object v0, p1, Lio/github/lazyimmortal/sesame/entity/IdAndName;->id:Ljava/lang/String;

    invoke-interface {p4, v0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc;->get(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p4

    if-lez p0, :cond_1

    .line 452
    sget-object p4, Lio/github/lazyimmortal/sesame/ui/ListDialog;->selectModelFieldFunc:Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc;

    iget-object p1, p1, Lio/github/lazyimmortal/sesame/entity/IdAndName;->id:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p4, p1, p0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc;->add(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 453
    iget-object p0, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->cb:Landroid/widget/CheckBox;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    :cond_1
    if-eqz p4, :cond_2

    .line 456
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ltz p0, :cond_2

    .line 457
    sget-object p0, Lio/github/lazyimmortal/sesame/ui/ListDialog;->selectModelFieldFunc:Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc;

    iget-object p1, p1, Lio/github/lazyimmortal/sesame/entity/IdAndName;->id:Ljava/lang/String;

    invoke-interface {p0, p1}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc;->remove(Ljava/lang/String;)V

    .line 459
    :cond_2
    iget-object p0, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->cb:Landroid/widget/CheckBox;

    invoke-virtual {p0, p5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 462
    :cond_3
    :goto_1
    invoke-static {p3}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->get(Landroid/content/Context;)Lio/github/lazyimmortal/sesame/ui/ListAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method static synthetic lambda$getListView$11(Landroid/content/Context;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1

    .line 404
    sget-object p4, Lio/github/lazyimmortal/sesame/ui/ListDialog;->listType:Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;

    sget-object p5, Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;->SHOW:Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;

    if-ne p4, p5, :cond_0

    sget-boolean p4, Lio/github/lazyimmortal/sesame/ui/ListDialog;->isFriendWatchList:Z

    if-eqz p4, :cond_0

    return-void

    .line 407
    :cond_0
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/github/lazyimmortal/sesame/entity/IdAndName;

    .line 408
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;

    .line 409
    sget-object p3, Lio/github/lazyimmortal/sesame/ui/ListDialog;->hasCount:Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-nez p3, :cond_6

    .line 410
    sget-object p0, Lio/github/lazyimmortal/sesame/ui/ListDialog;->listType:Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;

    sget-object p3, Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;->RADIO:Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;

    const/4 p4, 0x1

    const/4 p5, 0x0

    if-ne p0, p3, :cond_3

    .line 411
    sget-object p0, Lio/github/lazyimmortal/sesame/ui/ListDialog;->selectModelFieldFunc:Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc;

    invoke-interface {p0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc;->clear()V

    .line 412
    iget-object p0, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->cb:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 413
    iget-object p0, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->cb:Landroid/widget/CheckBox;

    invoke-virtual {p0, p5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_4

    :cond_1
    const/4 p0, 0x0

    .line 416
    :goto_0
    sget-object p3, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->viewHolderList:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p0, p3, :cond_2

    .line 417
    sget-object p3, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->viewHolderList:Ljava/util/List;

    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;

    .line 418
    iget-object p3, p3, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->cb:Landroid/widget/CheckBox;

    invoke-virtual {p3, p5}, Landroid/widget/CheckBox;->setChecked(Z)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 420
    :cond_2
    iget-object p0, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->cb:Landroid/widget/CheckBox;

    invoke-virtual {p0, p4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 421
    sget-object p0, Lio/github/lazyimmortal/sesame/ui/ListDialog;->selectModelFieldFunc:Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc;

    iget-object p1, p1, Lio/github/lazyimmortal/sesame/entity/IdAndName;->id:Ljava/lang/String;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc;->add(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_4

    .line 425
    :cond_3
    iget-object p0, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->cb:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 426
    sget-object p0, Lio/github/lazyimmortal/sesame/ui/ListDialog;->selectModelFieldFunc:Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc;

    iget-object p1, p1, Lio/github/lazyimmortal/sesame/entity/IdAndName;->id:Ljava/lang/String;

    invoke-interface {p0, p1}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc;->remove(Ljava/lang/String;)V

    .line 427
    iget-object p0, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->cb:Landroid/widget/CheckBox;

    invoke-virtual {p0, p5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_4

    .line 430
    :cond_4
    sget-object p0, Lio/github/lazyimmortal/sesame/ui/ListDialog;->selectModelFieldFunc:Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc;

    iget-object p3, p1, Lio/github/lazyimmortal/sesame/entity/IdAndName;->id:Ljava/lang/String;

    invoke-interface {p0, p3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc;->contains(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_5

    .line 431
    sget-object p0, Lio/github/lazyimmortal/sesame/ui/ListDialog;->selectModelFieldFunc:Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc;

    iget-object p1, p1, Lio/github/lazyimmortal/sesame/entity/IdAndName;->id:Ljava/lang/String;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p0, p1, p3}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc;->add(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 433
    :cond_5
    iget-object p0, p2, Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;->cb:Landroid/widget/CheckBox;

    invoke-virtual {p0, p4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_4

    .line 438
    :cond_6
    new-instance p3, Landroid/widget/EditText;

    invoke-direct {p3, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 439
    new-instance p4, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p4, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object p5, p1, Lio/github/lazyimmortal/sesame/entity/IdAndName;->name:Ljava/lang/String;

    invoke-virtual {p4, p5}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p4

    invoke-virtual {p4, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p4

    sget p5, Lio/github/lazyimmortal/sesame/R$string;->ok:I

    invoke-virtual {p0, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p5

    new-instance v0, Lio/github/lazyimmortal/sesame/ui/ListDialog$$ExternalSyntheticLambda6;

    invoke-direct {v0, p3, p1, p2, p0}, Lio/github/lazyimmortal/sesame/ui/ListDialog$$ExternalSyntheticLambda6;-><init>(Landroid/widget/EditText;Lio/github/lazyimmortal/sesame/entity/IdAndName;Lio/github/lazyimmortal/sesame/ui/ListAdapter$ViewHolder;Landroid/content/Context;)V

    invoke-virtual {p4, p5, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    sget p4, Lio/github/lazyimmortal/sesame/R$string;->cancel:I

    .line 463
    invoke-virtual {p0, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p4, 0x0

    invoke-virtual {p2, p0, p4}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    .line 464
    instance-of p2, p1, Lio/github/lazyimmortal/sesame/entity/CooperateUser;

    if-eqz p2, :cond_7

    .line 465
    const-string p2, "\u6d47\u6c34\u514b\u6570"

    invoke-virtual {p3, p2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 467
    :cond_7
    instance-of p2, p1, Lio/github/lazyimmortal/sesame/entity/AlipayMarathon;

    if-nez p2, :cond_9

    instance-of p2, p1, Lio/github/lazyimmortal/sesame/entity/AlipayNewAncientTree;

    if-eqz p2, :cond_8

    goto :goto_1

    .line 471
    :cond_8
    const-string p2, "\u6b21\u6570"

    invoke-virtual {p3, p2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 468
    :cond_9
    :goto_1
    const-string p2, "\u52a9\u529b\u514b\u6570"

    invoke-virtual {p3, p2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 473
    :goto_2
    sget-object p2, Lio/github/lazyimmortal/sesame/ui/ListDialog;->selectModelFieldFunc:Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc;

    iget-object p1, p1, Lio/github/lazyimmortal/sesame/entity/IdAndName;->id:Ljava/lang/String;

    invoke-interface {p2, p1}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc;->get(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 474
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ltz p2, :cond_a

    .line 475
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 478
    :cond_a
    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    .line 480
    :goto_3
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->show()V

    :goto_4
    return-void
.end method

.method static synthetic lambda$getListView$12(Lio/github/lazyimmortal/sesame/entity/IdAndName;Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p2, -0x1

    if-ne p3, p2, :cond_1a

    .line 489
    instance-of p2, p0, Lio/github/lazyimmortal/sesame/entity/AlipayTree;

    if-eqz p2, :cond_0

    .line 490
    iget-object p2, p0, Lio/github/lazyimmortal/sesame/entity/IdAndName;->id:Ljava/lang/String;

    invoke-static {p2}, Lio/github/lazyimmortal/sesame/entity/AlipayTree;->remove(Ljava/lang/String;)V

    .line 491
    iget-object p2, p0, Lio/github/lazyimmortal/sesame/entity/IdAndName;->id:Ljava/lang/String;

    invoke-static {p2}, Lio/github/lazyimmortal/sesame/util/idMap/TreeIdMap;->remove(Ljava/lang/String;)V

    .line 492
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/TreeIdMap;->save()Z

    goto/16 :goto_0

    .line 494
    :cond_0
    instance-of p2, p0, Lio/github/lazyimmortal/sesame/entity/AlipayReserve;

    if-eqz p2, :cond_1

    .line 495
    iget-object p2, p0, Lio/github/lazyimmortal/sesame/entity/IdAndName;->id:Ljava/lang/String;

    invoke-static {p2}, Lio/github/lazyimmortal/sesame/entity/AlipayReserve;->remove(Ljava/lang/String;)V

    .line 496
    iget-object p2, p0, Lio/github/lazyimmortal/sesame/entity/IdAndName;->id:Ljava/lang/String;

    invoke-static {p2}, Lio/github/lazyimmortal/sesame/util/idMap/ReserveIdMap;->remove(Ljava/lang/String;)V

    .line 497
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/ReserveIdMap;->save()Z

    goto/16 :goto_0

    .line 499
    :cond_1
    instance-of p2, p0, Lio/github/lazyimmortal/sesame/entity/AlipayAnimal;

    if-eqz p2, :cond_2

    .line 500
    iget-object p2, p0, Lio/github/lazyimmortal/sesame/entity/IdAndName;->id:Ljava/lang/String;

    invoke-static {p2}, Lio/github/lazyimmortal/sesame/entity/AlipayAnimal;->remove(Ljava/lang/String;)V

    .line 501
    iget-object p2, p0, Lio/github/lazyimmortal/sesame/entity/IdAndName;->id:Ljava/lang/String;

    invoke-static {p2}, Lio/github/lazyimmortal/sesame/util/idMap/AnimalIdMap;->remove(Ljava/lang/String;)V

    .line 502
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/AnimalIdMap;->save()Z

    goto/16 :goto_0

    .line 504
    :cond_2
    instance-of p2, p0, Lio/github/lazyimmortal/sesame/entity/AlipayMarathon;

    if-eqz p2, :cond_3

    .line 505
    iget-object p2, p0, Lio/github/lazyimmortal/sesame/entity/IdAndName;->id:Ljava/lang/String;

    invoke-static {p2}, Lio/github/lazyimmortal/sesame/entity/AlipayMarathon;->remove(Ljava/lang/String;)V

    .line 506
    iget-object p2, p0, Lio/github/lazyimmortal/sesame/entity/IdAndName;->id:Ljava/lang/String;

    invoke-static {p2}, Lio/github/lazyimmortal/sesame/util/idMap/MarathonIdMap;->remove(Ljava/lang/String;)V

    .line 507
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/MarathonIdMap;->save()Z

    goto/16 :goto_0

    .line 509
    :cond_3
    instance-of p2, p0, Lio/github/lazyimmortal/sesame/entity/AlipayNewAncientTree;

    if-eqz p2, :cond_4

    .line 510
    iget-object p2, p0, Lio/github/lazyimmortal/sesame/entity/IdAndName;->id:Ljava/lang/String;

    invoke-static {p2}, Lio/github/lazyimmortal/sesame/entity/AlipayNewAncientTree;->remove(Ljava/lang/String;)V

    .line 511
    iget-object p2, p0, Lio/github/lazyimmortal/sesame/entity/IdAndName;->id:Ljava/lang/String;

    invoke-static {p2}, Lio/github/lazyimmortal/sesame/util/idMap/NewAncientTreeIdMap;->remove(Ljava/lang/String;)V

    .line 512
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/NewAncientTreeIdMap;->save()Z

    goto/16 :goto_0

    .line 514
    :cond_4
    instance-of p2, p0, Lio/github/lazyimmortal/sesame/entity/AlipayBeach;

    if-eqz p2, :cond_5

    .line 515
    iget-object p2, p0, Lio/github/lazyimmortal/sesame/entity/IdAndName;->id:Ljava/lang/String;

    invoke-static {p2}, Lio/github/lazyimmortal/sesame/entity/AlipayBeach;->remove(Ljava/lang/String;)V

    .line 516
    iget-object p2, p0, Lio/github/lazyimmortal/sesame/entity/IdAndName;->id:Ljava/lang/String;

    invoke-static {p2}, Lio/github/lazyimmortal/sesame/util/idMap/BeachIdMap;->remove(Ljava/lang/String;)V

    .line 517
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/BeachIdMap;->save()Z

    goto/16 :goto_0

    .line 519
    :cond_5
    instance-of p2, p0, Lio/github/lazyimmortal/sesame/entity/AlipayPlantScene;

    if-eqz p2, :cond_6

    .line 520
    iget-object p2, p0, Lio/github/lazyimmortal/sesame/entity/IdAndName;->id:Ljava/lang/String;

    invoke-static {p2}, Lio/github/lazyimmortal/sesame/entity/AlipayPlantScene;->remove(Ljava/lang/String;)V

    .line 521
    iget-object p2, p0, Lio/github/lazyimmortal/sesame/entity/IdAndName;->id:Ljava/lang/String;

    invoke-static {p2}, Lio/github/lazyimmortal/sesame/util/idMap/PlantSceneIdMap;->remove(Ljava/lang/String;)V

    .line 522
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/PlantSceneIdMap;->save()Z

    goto/16 :goto_0

    .line 524
    :cond_6
    instance-of p2, p0, Lio/github/lazyimmortal/sesame/entity/AlipayrpcRequest;

    if-eqz p2, :cond_7

    .line 525
    iget-object p2, p0, Lio/github/lazyimmortal/sesame/entity/IdAndName;->id:Ljava/lang/String;

    invoke-static {p2}, Lio/github/lazyimmortal/sesame/entity/AlipayrpcRequest;->remove(Ljava/lang/String;)V

    .line 526
    iget-object p2, p0, Lio/github/lazyimmortal/sesame/entity/IdAndName;->id:Ljava/lang/String;

    invoke-static {p2}, Lio/github/lazyimmortal/sesame/util/idMap/rpcRequestMap;->remove(Ljava/lang/String;)V

    .line 527
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/rpcRequestMap;->save()Z

    goto/16 :goto_0

    .line 529
    :cond_7
    instance-of p2, p0, Lio/github/lazyimmortal/sesame/entity/AlipayForestHunt;

    if-eqz p2, :cond_8

    .line 530
    iget-object p2, p0, Lio/github/lazyimmortal/sesame/entity/IdAndName;->id:Ljava/lang/String;

    invoke-static {p2}, Lio/github/lazyimmortal/sesame/entity/AlipayForestHunt;->remove(Ljava/lang/String;)V

    .line 531
    iget-object p2, p0, Lio/github/lazyimmortal/sesame/entity/IdAndName;->id:Ljava/lang/String;

    invoke-static {p2}, Lio/github/lazyimmortal/sesame/util/idMap/ForestHuntIdMap;->remove(Ljava/lang/String;)V

    .line 532
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/ForestHuntIdMap;->save()Z

    goto/16 :goto_0

    .line 534
    :cond_8
    instance-of p2, p0, Lio/github/lazyimmortal/sesame/entity/AlipayMemberCreditSesameTaskList;

    if-eqz p2, :cond_9

    .line 535
    iget-object p2, p0, Lio/github/lazyimmortal/sesame/entity/IdAndName;->id:Ljava/lang/String;

    invoke-static {p2}, Lio/github/lazyimmortal/sesame/entity/AlipayMemberCreditSesameTaskList;->remove(Ljava/lang/String;)V

    .line 536
    iget-object p2, p0, Lio/github/lazyimmortal/sesame/entity/IdAndName;->id:Ljava/lang/String;

    invoke-static {p2}, Lio/github/lazyimmortal/sesame/util/idMap/MemberCreditSesameTaskListMap;->remove(Ljava/lang/String;)V

    .line 537
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/MemberCreditSesameTaskListMap;->save()Z

    goto/16 :goto_0

    .line 539
    :cond_9
    instance-of p2, p0, Lio/github/lazyimmortal/sesame/entity/AlipayAntForestVitalityTaskList;

    if-eqz p2, :cond_a

    .line 540
    iget-object p2, p0, Lio/github/lazyimmortal/sesame/entity/IdAndName;->id:Ljava/lang/String;

    invoke-static {p2}, Lio/github/lazyimmortal/sesame/entity/AlipayAntForestVitalityTaskList;->remove(Ljava/lang/String;)V

    .line 541
    iget-object p2, p0, Lio/github/lazyimmortal/sesame/entity/IdAndName;->id:Ljava/lang/String;

    invoke-static {p2}, Lio/github/lazyimmortal/sesame/util/idMap/AntForestVitalityTaskListMap;->remove(Ljava/lang/String;)V

    .line 542
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/AntForestVitalityTaskListMap;->save()Z

    goto/16 :goto_0

    .line 544
    :cond_a
    instance-of p2, p0, Lio/github/lazyimmortal/sesame/entity/AlipayAntForestHuntTaskList;

    if-eqz p2, :cond_b

    .line 545
    iget-object p2, p0, Lio/github/lazyimmortal/sesame/entity/IdAndName;->id:Ljava/lang/String;

    invoke-static {p2}, Lio/github/lazyimmortal/sesame/entity/AlipayAntForestHuntTaskList;->remove(Ljava/lang/String;)V

    .line 546
    iget-object p2, p0, Lio/github/lazyimmortal/sesame/entity/IdAndName;->id:Ljava/lang/String;

    invoke-static {p2}, Lio/github/lazyimmortal/sesame/util/idMap/AntForestHuntTaskListMap;->remove(Ljava/lang/String;)V

    .line 547
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/AntForestHuntTaskListMap;->save()Z

    goto/16 :goto_0

    .line 549
    :cond_b
    instance-of p2, p0, Lio/github/lazyimmortal/sesame/entity/AlipayAntFarmDoFarmTaskList;

    if-eqz p2, :cond_c

    .line 550
    iget-object p2, p0, Lio/github/lazyimmortal/sesame/entity/IdAndName;->id:Ljava/lang/String;

    invoke-static {p2}, Lio/github/lazyimmortal/sesame/entity/AlipayAntFarmDoFarmTaskList;->remove(Ljava/lang/String;)V

    .line 551
    iget-object p2, p0, Lio/github/lazyimmortal/sesame/entity/IdAndName;->id:Ljava/lang/String;

    invoke-static {p2}, Lio/github/lazyimmortal/sesame/util/idMap/AntFarmDoFarmTaskListMap;->remove(Ljava/lang/String;)V

    .line 552
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/AntFarmDoFarmTaskListMap;->save()Z

    goto/16 :goto_0

    .line 554
    :cond_c
    instance-of p2, p0, Lio/github/lazyimmortal/sesame/entity/AlipayAntFarmChickenChefTaskList;

    if-eqz p2, :cond_d

    .line 555
    iget-object p2, p0, Lio/github/lazyimmortal/sesame/entity/IdAndName;->id:Ljava/lang/String;

    invoke-static {p2}, Lio/github/lazyimmortal/sesame/entity/AlipayAntFarmChickenChefTaskList;->remove(Ljava/lang/String;)V

    .line 556
    iget-object p2, p0, Lio/github/lazyimmortal/sesame/entity/IdAndName;->id:Ljava/lang/String;

    invoke-static {p2}, Lio/github/lazyimmortal/sesame/util/idMap/AntFarmChickenChefTaskListMap;->remove(Ljava/lang/String;)V

    .line 557
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/AntFarmChickenChefTaskListMap;->save()Z

    goto/16 :goto_0

    .line 559
    :cond_d
    instance-of p2, p0, Lio/github/lazyimmortal/sesame/entity/AlipayAntFarmDrawMachineTaskList;

    if-eqz p2, :cond_e

    .line 560
    iget-object p2, p0, Lio/github/lazyimmortal/sesame/entity/IdAndName;->id:Ljava/lang/String;

    invoke-static {p2}, Lio/github/lazyimmortal/sesame/entity/AlipayAntFarmDrawMachineTaskList;->remove(Ljava/lang/String;)V

    .line 561
    iget-object p2, p0, Lio/github/lazyimmortal/sesame/entity/IdAndName;->id:Ljava/lang/String;

    invoke-static {p2}, Lio/github/lazyimmortal/sesame/util/idMap/AntFarmDrawMachineTaskListMap;->remove(Ljava/lang/String;)V

    .line 562
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/AntFarmDrawMachineTaskListMap;->save()Z

    goto/16 :goto_0

    .line 564
    :cond_e
    instance-of p2, p0, Lio/github/lazyimmortal/sesame/entity/AlipayAntDodoTaskList;

    if-eqz p2, :cond_f

    .line 565
    iget-object p2, p0, Lio/github/lazyimmortal/sesame/entity/IdAndName;->id:Ljava/lang/String;

    invoke-static {p2}, Lio/github/lazyimmortal/sesame/entity/AlipayAntDodoTaskList;->remove(Ljava/lang/String;)V

    .line 566
    iget-object p2, p0, Lio/github/lazyimmortal/sesame/entity/IdAndName;->id:Ljava/lang/String;

    invoke-static {p2}, Lio/github/lazyimmortal/sesame/util/idMap/AntDodoTaskListMap;->remove(Ljava/lang/String;)V

    .line 567
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/AntDodoTaskListMap;->save()Z

    goto/16 :goto_0

    .line 569
    :cond_f
    instance-of p2, p0, Lio/github/lazyimmortal/sesame/entity/AlipayAntOceanAntiepTaskList;

    if-eqz p2, :cond_10

    .line 570
    iget-object p2, p0, Lio/github/lazyimmortal/sesame/entity/IdAndName;->id:Ljava/lang/String;

    invoke-static {p2}, Lio/github/lazyimmortal/sesame/entity/AlipayAntOceanAntiepTaskList;->remove(Ljava/lang/String;)V

    .line 571
    iget-object p2, p0, Lio/github/lazyimmortal/sesame/entity/IdAndName;->id:Ljava/lang/String;

    invoke-static {p2}, Lio/github/lazyimmortal/sesame/util/idMap/AntOceanAntiepTaskListMap;->remove(Ljava/lang/String;)V

    .line 572
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/AntOceanAntiepTaskListMap;->save()Z

    goto/16 :goto_0

    .line 574
    :cond_10
    instance-of p2, p0, Lio/github/lazyimmortal/sesame/entity/AlipayAntOceanFishBlackList;

    if-eqz p2, :cond_11

    .line 575
    iget-object p2, p0, Lio/github/lazyimmortal/sesame/entity/IdAndName;->id:Ljava/lang/String;

    invoke-static {p2}, Lio/github/lazyimmortal/sesame/entity/AlipayAntOceanFishBlackList;->remove(Ljava/lang/String;)V

    .line 576
    iget-object p2, p0, Lio/github/lazyimmortal/sesame/entity/IdAndName;->id:Ljava/lang/String;

    invoke-static {p2}, Lio/github/lazyimmortal/sesame/util/idMap/AntOceanFishBlackListMap;->remove(Ljava/lang/String;)V

    .line 577
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/AntOceanFishBlackListMap;->save()Z

    goto/16 :goto_0

    .line 579
    :cond_11
    instance-of p2, p0, Lio/github/lazyimmortal/sesame/entity/AlipayAntOrchardTaskList;

    if-eqz p2, :cond_12

    .line 580
    iget-object p2, p0, Lio/github/lazyimmortal/sesame/entity/IdAndName;->id:Ljava/lang/String;

    invoke-static {p2}, Lio/github/lazyimmortal/sesame/entity/AlipayAntOrchardTaskList;->remove(Ljava/lang/String;)V

    .line 581
    iget-object p2, p0, Lio/github/lazyimmortal/sesame/entity/IdAndName;->id:Ljava/lang/String;

    invoke-static {p2}, Lio/github/lazyimmortal/sesame/util/idMap/AntOrchardTaskListMap;->remove(Ljava/lang/String;)V

    .line 582
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/AntOrchardTaskListMap;->save()Z

    goto/16 :goto_0

    .line 584
    :cond_12
    instance-of p2, p0, Lio/github/lazyimmortal/sesame/entity/AlipayAntOrchardDrawTaskList;

    if-eqz p2, :cond_13

    .line 585
    iget-object p2, p0, Lio/github/lazyimmortal/sesame/entity/IdAndName;->id:Ljava/lang/String;

    invoke-static {p2}, Lio/github/lazyimmortal/sesame/entity/AlipayAntOrchardDrawTaskList;->remove(Ljava/lang/String;)V

    .line 586
    iget-object p2, p0, Lio/github/lazyimmortal/sesame/entity/IdAndName;->id:Ljava/lang/String;

    invoke-static {p2}, Lio/github/lazyimmortal/sesame/util/idMap/AntOrchardDrawTaskListMap;->remove(Ljava/lang/String;)V

    .line 587
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/AntOrchardDrawTaskListMap;->save()Z

    goto :goto_0

    .line 589
    :cond_13
    instance-of p2, p0, Lio/github/lazyimmortal/sesame/entity/AlipayGoldenBeansTaskList;

    if-eqz p2, :cond_14

    .line 590
    iget-object p2, p0, Lio/github/lazyimmortal/sesame/entity/IdAndName;->id:Ljava/lang/String;

    invoke-static {p2}, Lio/github/lazyimmortal/sesame/entity/AlipayGoldenBeansTaskList;->remove(Ljava/lang/String;)V

    .line 591
    iget-object p2, p0, Lio/github/lazyimmortal/sesame/entity/IdAndName;->id:Ljava/lang/String;

    invoke-static {p2}, Lio/github/lazyimmortal/sesame/util/idMap/GoldenBeansTaskListMap;->remove(Ljava/lang/String;)V

    .line 592
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/GoldenBeansTaskListMap;->save()Z

    goto :goto_0

    .line 594
    :cond_14
    instance-of p2, p0, Lio/github/lazyimmortal/sesame/entity/AlipayMonopolyTaskList;

    if-eqz p2, :cond_15

    .line 595
    iget-object p2, p0, Lio/github/lazyimmortal/sesame/entity/IdAndName;->id:Ljava/lang/String;

    invoke-static {p2}, Lio/github/lazyimmortal/sesame/entity/AlipayMonopolyTaskList;->remove(Ljava/lang/String;)V

    .line 596
    iget-object p2, p0, Lio/github/lazyimmortal/sesame/entity/IdAndName;->id:Ljava/lang/String;

    invoke-static {p2}, Lio/github/lazyimmortal/sesame/util/idMap/MonopolyTaskListMap;->remove(Ljava/lang/String;)V

    .line 597
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/MonopolyTaskListMap;->save()Z

    goto :goto_0

    .line 599
    :cond_15
    instance-of p2, p0, Lio/github/lazyimmortal/sesame/entity/AlipayAntStallTaskList;

    if-eqz p2, :cond_16

    .line 600
    iget-object p2, p0, Lio/github/lazyimmortal/sesame/entity/IdAndName;->id:Ljava/lang/String;

    invoke-static {p2}, Lio/github/lazyimmortal/sesame/entity/AlipayAntStallTaskList;->remove(Ljava/lang/String;)V

    .line 601
    iget-object p2, p0, Lio/github/lazyimmortal/sesame/entity/IdAndName;->id:Ljava/lang/String;

    invoke-static {p2}, Lio/github/lazyimmortal/sesame/util/idMap/AntStallTaskListMap;->remove(Ljava/lang/String;)V

    .line 602
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/AntStallTaskListMap;->save()Z

    goto :goto_0

    .line 604
    :cond_16
    instance-of p2, p0, Lio/github/lazyimmortal/sesame/entity/AlipayAntSportsTaskList;

    if-eqz p2, :cond_17

    .line 605
    iget-object p2, p0, Lio/github/lazyimmortal/sesame/entity/IdAndName;->id:Ljava/lang/String;

    invoke-static {p2}, Lio/github/lazyimmortal/sesame/entity/AlipayAntSportsTaskList;->remove(Ljava/lang/String;)V

    .line 606
    iget-object p2, p0, Lio/github/lazyimmortal/sesame/entity/IdAndName;->id:Ljava/lang/String;

    invoke-static {p2}, Lio/github/lazyimmortal/sesame/util/idMap/AntSportsTaskListMap;->remove(Ljava/lang/String;)V

    .line 607
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/AntSportsTaskListMap;->save()Z

    goto :goto_0

    .line 609
    :cond_17
    instance-of p2, p0, Lio/github/lazyimmortal/sesame/entity/WalkPathThemeMapList;

    if-eqz p2, :cond_18

    .line 610
    iget-object p2, p0, Lio/github/lazyimmortal/sesame/entity/IdAndName;->id:Ljava/lang/String;

    invoke-static {p2}, Lio/github/lazyimmortal/sesame/entity/WalkPathThemeMapList;->remove(Ljava/lang/String;)V

    .line 611
    iget-object p2, p0, Lio/github/lazyimmortal/sesame/entity/IdAndName;->id:Ljava/lang/String;

    invoke-static {p2}, Lio/github/lazyimmortal/sesame/util/idMap/PathThemeMapListMap;->remove(Ljava/lang/String;)V

    .line 612
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/PathThemeMapListMap;->save()Z

    goto :goto_0

    .line 615
    :cond_18
    instance-of p2, p0, Lio/github/lazyimmortal/sesame/entity/AlipayAntMemberTaskList;

    if-eqz p2, :cond_19

    .line 616
    iget-object p2, p0, Lio/github/lazyimmortal/sesame/entity/IdAndName;->id:Ljava/lang/String;

    invoke-static {p2}, Lio/github/lazyimmortal/sesame/entity/AlipayAntMemberTaskList;->remove(Ljava/lang/String;)V

    .line 617
    iget-object p2, p0, Lio/github/lazyimmortal/sesame/entity/IdAndName;->id:Ljava/lang/String;

    invoke-static {p2}, Lio/github/lazyimmortal/sesame/util/idMap/AntMemberTaskListMap;->remove(Ljava/lang/String;)V

    .line 618
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/AntMemberTaskListMap;->save()Z

    .line 620
    :cond_19
    :goto_0
    sget-object p2, Lio/github/lazyimmortal/sesame/ui/ListDialog;->selectModelFieldFunc:Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc;

    iget-object p0, p0, Lio/github/lazyimmortal/sesame/entity/IdAndName;->id:Ljava/lang/String;

    invoke-interface {p2, p0}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc;->remove(Ljava/lang/String;)V

    .line 621
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->get(Landroid/content/Context;)Lio/github/lazyimmortal/sesame/ui/ListAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->exitFind()V

    .line 623
    :cond_1a
    invoke-static {p1}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->get(Landroid/content/Context;)Lio/github/lazyimmortal/sesame/ui/ListAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method static synthetic lambda$getListView$13(Landroid/content/Context;Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0

    const-string p2, "\u5220\u9664 "

    .line 484
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/github/lazyimmortal/sesame/entity/IdAndName;

    .line 485
    instance-of p3, p1, Lio/github/lazyimmortal/sesame/entity/AlipayTree;

    const/4 p4, 0x0

    if-nez p3, :cond_2

    instance-of p3, p1, Lio/github/lazyimmortal/sesame/entity/AlipayReserve;

    if-nez p3, :cond_2

    instance-of p3, p1, Lio/github/lazyimmortal/sesame/entity/AlipayAnimal;

    if-nez p3, :cond_2

    instance-of p3, p1, Lio/github/lazyimmortal/sesame/entity/AlipayMarathon;

    if-nez p3, :cond_2

    instance-of p3, p1, Lio/github/lazyimmortal/sesame/entity/AlipayNewAncientTree;

    if-nez p3, :cond_2

    instance-of p3, p1, Lio/github/lazyimmortal/sesame/entity/AlipayBeach;

    if-nez p3, :cond_2

    instance-of p3, p1, Lio/github/lazyimmortal/sesame/entity/AlipayPlantScene;

    if-nez p3, :cond_2

    instance-of p3, p1, Lio/github/lazyimmortal/sesame/entity/AlipayrpcRequest;

    if-nez p3, :cond_2

    instance-of p3, p1, Lio/github/lazyimmortal/sesame/entity/AlipayForestHunt;

    if-nez p3, :cond_2

    instance-of p3, p1, Lio/github/lazyimmortal/sesame/entity/AlipayMemberCreditSesameTaskList;

    if-nez p3, :cond_2

    instance-of p3, p1, Lio/github/lazyimmortal/sesame/entity/AlipayAntForestVitalityTaskList;

    if-nez p3, :cond_2

    instance-of p3, p1, Lio/github/lazyimmortal/sesame/entity/AlipayAntForestHuntTaskList;

    if-nez p3, :cond_2

    instance-of p3, p1, Lio/github/lazyimmortal/sesame/entity/AlipayAntFarmDoFarmTaskList;

    if-nez p3, :cond_2

    instance-of p3, p1, Lio/github/lazyimmortal/sesame/entity/AlipayAntFarmDrawMachineTaskList;

    if-nez p3, :cond_2

    instance-of p3, p1, Lio/github/lazyimmortal/sesame/entity/AlipayAntFarmChickenChefTaskList;

    if-nez p3, :cond_2

    instance-of p3, p1, Lio/github/lazyimmortal/sesame/entity/AlipayAntDodoTaskList;

    if-nez p3, :cond_2

    instance-of p3, p1, Lio/github/lazyimmortal/sesame/entity/AlipayAntOceanAntiepTaskList;

    if-nez p3, :cond_2

    instance-of p3, p1, Lio/github/lazyimmortal/sesame/entity/AlipayAntOceanFishBlackList;

    if-nez p3, :cond_2

    instance-of p3, p1, Lio/github/lazyimmortal/sesame/entity/AlipayAntOrchardTaskList;

    if-nez p3, :cond_2

    instance-of p3, p1, Lio/github/lazyimmortal/sesame/entity/AlipayAntOrchardDrawTaskList;

    if-nez p3, :cond_2

    instance-of p3, p1, Lio/github/lazyimmortal/sesame/entity/AlipayGoldenBeansTaskList;

    if-nez p3, :cond_2

    instance-of p3, p1, Lio/github/lazyimmortal/sesame/entity/AlipayMonopolyTaskList;

    if-nez p3, :cond_2

    instance-of p3, p1, Lio/github/lazyimmortal/sesame/entity/AlipayAntStallTaskList;

    if-nez p3, :cond_2

    instance-of p3, p1, Lio/github/lazyimmortal/sesame/entity/AlipayAntSportsTaskList;

    if-nez p3, :cond_2

    instance-of p3, p1, Lio/github/lazyimmortal/sesame/entity/WalkPathThemeMapList;

    if-nez p3, :cond_2

    instance-of p3, p1, Lio/github/lazyimmortal/sesame/entity/AlipayAntMemberTaskList;

    if-nez p3, :cond_2

    instance-of p3, p1, Lio/github/lazyimmortal/sesame/entity/WalkPath;

    if-eqz p3, :cond_0

    goto :goto_0

    .line 629
    :cond_0
    instance-of p2, p1, Lio/github/lazyimmortal/sesame/entity/AlipayUser;

    if-nez p2, :cond_1

    instance-of p2, p1, Lio/github/lazyimmortal/sesame/entity/FriendWatch;

    if-eqz p2, :cond_3

    .line 630
    :cond_1
    new-instance p2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p2, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p3, "\u9009\u9879"

    invoke-virtual {p2, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/ui/OptionsAdapter;->get(Landroid/content/Context;)Lio/github/lazyimmortal/sesame/ui/OptionsAdapter;

    move-result-object p3

    new-instance p5, Lio/github/lazyimmortal/sesame/ui/ListDialog$4;

    invoke-direct {p5, p1}, Lio/github/lazyimmortal/sesame/ui/ListDialog$4;-><init>(Lio/github/lazyimmortal/sesame/entity/IdAndName;)V

    .line 678
    invoke-virtual {p5, p0}, Lio/github/lazyimmortal/sesame/ui/ListDialog$4;->setContext(Landroid/content/Context;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object p1

    .line 630
    invoke-virtual {p2, p3, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lio/github/lazyimmortal/sesame/R$string;->cancel:I

    .line 678
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, p4}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->show()V

    goto :goto_1

    .line 487
    :cond_2
    :goto_0
    :try_start_0
    new-instance p3, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p3, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p1, Lio/github/lazyimmortal/sesame/entity/IdAndName;->name:Ljava/lang/String;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    sget p3, Lio/github/lazyimmortal/sesame/R$string;->ok:I

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-instance p5, Lio/github/lazyimmortal/sesame/ui/ListDialog$$ExternalSyntheticLambda4;

    invoke-direct {p5, p1, p0}, Lio/github/lazyimmortal/sesame/ui/ListDialog$$ExternalSyntheticLambda4;-><init>(Lio/github/lazyimmortal/sesame/entity/IdAndName;Landroid/content/Context;)V

    invoke-virtual {p2, p3, p5}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lio/github/lazyimmortal/sesame/R$string;->cancel:I

    .line 624
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, p4}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_3
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$getListView$2(Landroid/view/View;)V
    .locals 3

    .line 243
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->get(Landroid/content/Context;)Lio/github/lazyimmortal/sesame/ui/ListAdapter;

    move-result-object v0

    .line 244
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lio/github/lazyimmortal/sesame/R$id;->btn_select_all:I

    if-ne v1, v2, :cond_0

    .line 245
    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->selectAll()V

    goto :goto_0

    .line 247
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p0

    sget v1, Lio/github/lazyimmortal/sesame/R$id;->btn_select_invert:I

    if-ne p0, v1, :cond_1

    .line 248
    invoke-virtual {v0}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->SelectInvert()V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic lambda$getListView$3(Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 258
    invoke-virtual {p3}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->get(Landroid/content/Context;)Lio/github/lazyimmortal/sesame/ui/ListAdapter;

    move-result-object p3

    const/4 p4, 0x1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 259
    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 260
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p2, :cond_2

    .line 261
    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    const/4 p4, 0x0

    :goto_2
    sget-object p2, Lio/github/lazyimmortal/sesame/ui/ListDialog;->fwDontCollectSet:Ljava/util/Set;

    .line 258
    invoke-virtual {p3, p0, p1, p4, p2}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->setFriendWatchFilter(ZZZLjava/util/Set;)V

    return-void
.end method

.method static synthetic lambda$getListView$4(Landroid/widget/EditText;Landroid/view/View;)V
    .locals 10

    if-eqz p0, :cond_0

    .line 280
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    .line 281
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_1

    :catch_0
    move-wide v8, v2

    const/4 v5, 0x0

    goto :goto_1

    .line 286
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    move-wide v8, v2

    const/4 v5, 0x1

    .line 293
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->get(Landroid/content/Context;)Lio/github/lazyimmortal/sesame/ui/ListAdapter;

    move-result-object v4

    sget v6, Lio/github/lazyimmortal/sesame/ui/ListDialog;->fwEnergyFieldPosition:I

    sget v7, Lio/github/lazyimmortal/sesame/ui/ListDialog;->fwEnergyCmpPosition:I

    invoke-virtual/range {v4 .. v9}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->setFriendWatchEnergyFilter(ZIIJ)V

    return-void
.end method

.method static synthetic lambda$getListView$5(Landroid/widget/TextView;[Ljava/lang/String;Ljava/lang/Runnable;Landroid/view/MenuItem;)Z
    .locals 0

    .line 303
    invoke-interface {p3}, Landroid/view/MenuItem;->getItemId()I

    move-result p3

    sput p3, Lio/github/lazyimmortal/sesame/ui/ListDialog;->fwEnergyFieldPosition:I

    .line 304
    aget-object p1, p1, p3

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$getListView$6(Landroid/widget/TextView;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 10

    .line 297
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 298
    const-string v2, "\u65e5\u6536"

    const-string v3, "\u5468\u6536"

    const-string v4, "\u603b\u6536"

    const-string v5, "\u65e5\u5747"

    const-string v6, "\u4e24\u5468"

    const-string v7, "\u4e09\u5468"

    const-string v8, "\u56db\u5468"

    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x7

    if-ge v2, v3, :cond_0

    .line 300
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    aget-object v4, p2, v2

    invoke-interface {v3, v1, v2, v2, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 302
    :cond_0
    new-instance v1, Lio/github/lazyimmortal/sesame/ui/ListDialog$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p2, p1}, Lio/github/lazyimmortal/sesame/ui/ListDialog$$ExternalSyntheticLambda2;-><init>(Landroid/widget/TextView;[Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 308
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method

.method static synthetic lambda$getListView$7(Landroid/widget/TextView;[Ljava/lang/String;Ljava/lang/Runnable;Landroid/view/MenuItem;)Z
    .locals 0

    .line 319
    invoke-interface {p3}, Landroid/view/MenuItem;->getItemId()I

    move-result p3

    sput p3, Lio/github/lazyimmortal/sesame/ui/ListDialog;->fwEnergyCmpPosition:I

    .line 320
    aget-object p1, p1, p3

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$getListView$8(Landroid/widget/TextView;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 5

    .line 313
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 314
    const-string p2, "\u4ee5\u5185"

    const-string v1, "\u4ee5\u4e0a"

    filled-new-array {p2, v1}, [Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    .line 316
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    aget-object v4, p2, v2

    invoke-interface {v3, v1, v2, v2, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 318
    :cond_0
    new-instance v1, Lio/github/lazyimmortal/sesame/ui/ListDialog$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p2, p1}, Lio/github/lazyimmortal/sesame/ui/ListDialog$$ExternalSyntheticLambda3;-><init>(Landroid/widget/TextView;[Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 324
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method

.method static synthetic lambda$getListView$9(Landroid/view/View;Z)V
    .locals 6

    if-eqz p1, :cond_0

    .line 346
    sget-object p0, Lio/github/lazyimmortal/sesame/ui/ListDialog;->oneClickText:Landroid/widget/EditText;

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 350
    :cond_0
    sget-object p1, Lio/github/lazyimmortal/sesame/ui/ListDialog;->oneClickText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 351
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 353
    sget-object p0, Lio/github/lazyimmortal/sesame/ui/ListDialog;->oneClickText:Landroid/widget/EditText;

    const-string p1, "\u8bf7\u8f93\u5165\u6570\u91cf"

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 358
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-gtz p1, :cond_2

    .line 362
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "\u8bf7\u8f93\u5165\u5927\u4e8e 0 \u7684\u6570\u5b57"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 366
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->get(Landroid/content/Context;)Lio/github/lazyimmortal/sesame/ui/ListAdapter;

    move-result-object v1

    .line 367
    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/github/lazyimmortal/sesame/entity/IdAndName;

    .line 368
    sget-object v4, Lio/github/lazyimmortal/sesame/ui/ListDialog;->selectModelFieldFunc:Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc;

    iget-object v3, v3, Lio/github/lazyimmortal/sesame/entity/IdAndName;->id:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc;->add(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 370
    :cond_3
    invoke-virtual {v1}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 375
    :catch_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "\u8bf7\u8f93\u5165\u6709\u6548\u7684\u6570\u5b57"

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method

.method static synthetic lambda$showListDialog$0(Landroid/content/DialogInterface;)V
    .locals 1

    .line 153
    sget-object p0, Lio/github/lazyimmortal/sesame/ui/ListDialog;->dismissCallback:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 154
    sput-object v0, Lio/github/lazyimmortal/sesame/ui/ListDialog;->dismissCallback:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    .line 156
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$showListDialog$1(Landroid/content/Context;Landroid/content/DialogInterface;)V
    .locals 11

    .line 160
    check-cast p1, Landroidx/appcompat/app/AlertDialog;

    .line 161
    sget v0, Lio/github/lazyimmortal/sesame/R$id;->layout_batch_process:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    sput-object v0, Lio/github/lazyimmortal/sesame/ui/ListDialog;->layout_batch_process:Landroid/widget/RelativeLayout;

    .line 163
    sget-object v1, Lio/github/lazyimmortal/sesame/ui/ListDialog;->listType:Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;

    sget-object v2, Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;->CHECK:Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 165
    sget v0, Lio/github/lazyimmortal/sesame/R$id;->layout_fw_filter:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 167
    sget-boolean v1, Lio/github/lazyimmortal/sesame/ui/ListDialog;->isFriendWatchList:Z

    if-eqz v1, :cond_1

    const/4 v3, 0x0

    :cond_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 169
    :cond_2
    sget v0, Lio/github/lazyimmortal/sesame/R$id;->cb_filter_shield:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 170
    sget v1, Lio/github/lazyimmortal/sesame/R$id;->cb_filter_dontcollect:I

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 171
    sget v2, Lio/github/lazyimmortal/sesame/R$id;->cb_filter_single:I

    invoke-virtual {p1, v2}, Landroidx/appcompat/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    if-eqz v0, :cond_3

    .line 173
    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_3
    if-eqz v1, :cond_4

    const/4 v0, 0x0

    .line 176
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_4
    if-eqz v2, :cond_5

    .line 179
    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 182
    :cond_5
    sget v0, Lio/github/lazyimmortal/sesame/R$id;->et_fw_energy_value:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 183
    sget v1, Lio/github/lazyimmortal/sesame/R$id;->tv_fw_energy_field:I

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 184
    sget v2, Lio/github/lazyimmortal/sesame/R$id;->tv_fw_energy_cmp:I

    invoke-virtual {p1, v2}, Landroidx/appcompat/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 186
    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    if-eqz v1, :cond_7

    .line 189
    const-string v0, "\u5468\u6536"

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    if-eqz p1, :cond_8

    .line 192
    const-string v0, "\u4ee5\u5185"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    :cond_8
    const/4 v7, 0x1

    sput v7, Lio/github/lazyimmortal/sesame/ui/ListDialog;->fwEnergyFieldPosition:I

    .line 195
    sput v4, Lio/github/lazyimmortal/sesame/ui/ListDialog;->fwEnergyCmpPosition:I

    .line 196
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->get(Landroid/content/Context;)Lio/github/lazyimmortal/sesame/ui/ListAdapter;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    invoke-virtual/range {v5 .. v10}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->setFriendWatchEnergyFilter(ZIIJ)V

    .line 197
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->get(Landroid/content/Context;)Lio/github/lazyimmortal/sesame/ui/ListAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public static setOnDismissCallback(Ljava/lang/Runnable;)V
    .locals 0

    .line 83
    sput-object p0, Lio/github/lazyimmortal/sesame/ui/ListDialog;->dismissCallback:Ljava/lang/Runnable;

    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField;)V
    .locals 1

    .line 103
    sget-object v0, Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;->CHECK:Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;

    invoke-static {p0, p1, p2, v0}, Lio/github/lazyimmortal/sesame/ui/ListDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField;Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;)V

    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField;Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;)V
    .locals 6

    .line 111
    invoke-virtual {p2}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountModelField;->getExpandValue()Ljava/util/List;

    move-result-object v2

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lio/github/lazyimmortal/sesame/ui/ListDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/util/List;Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc;Ljava/lang/Boolean;Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;)V

    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountOneModelField;Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;)V
    .locals 6

    .line 95
    invoke-virtual {p2}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectAndCountOneModelField;->getExpandValue()Ljava/util/List;

    move-result-object v2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lio/github/lazyimmortal/sesame/ui/ListDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/util/List;Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc;Ljava/lang/Boolean;Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;)V

    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;)V
    .locals 3

    invoke-virtual {p2}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "deleteFriendList"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lio/github/lazyimmortal/sesame/util/idMap/UserIdMap;->getCurrentUid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/entity/FriendWatch;->getDontCollectSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p0, p1, v1, v0, p2}, Lio/github/lazyimmortal/sesame/ui/ListDialog;->showFriendWatchSelect(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/util/List;Ljava/util/Set;Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;)V

    return-void

    .line 99
    :cond_0
    sget-object v0, Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;->CHECK:Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;

    invoke-static {p0, p1, p2, v0}, Lio/github/lazyimmortal/sesame/ui/ListDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;)V

    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;)V
    .locals 6

    .line 107
    invoke-virtual {p2}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;->getExpandValue()Ljava/util/List;

    move-result-object v2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lio/github/lazyimmortal/sesame/ui/ListDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/util/List;Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc;Ljava/lang/Boolean;Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;)V

    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectOneModelField;Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;)V
    .locals 6

    .line 91
    invoke-virtual {p2}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectOneModelField;->getExpandValue()Ljava/util/List;

    move-result-object v2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lio/github/lazyimmortal/sesame/ui/ListDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/util/List;Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc;Ljava/lang/Boolean;Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;)V

    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/util/List;Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc;Ljava/lang/Boolean;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List<",
            "+",
            "Lio/github/lazyimmortal/sesame/entity/IdAndName;",
            ">;",
            "Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .line 115
    sget-object v5, Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;->CHECK:Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lio/github/lazyimmortal/sesame/ui/ListDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/util/List;Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc;Ljava/lang/Boolean;Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;)V

    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/util/List;Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc;Ljava/lang/Boolean;Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List<",
            "+",
            "Lio/github/lazyimmortal/sesame/entity/IdAndName;",
            ">;",
            "Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc;",
            "Ljava/lang/Boolean;",
            "Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;",
            ")V"
        }
    .end annotation

    .line 119
    sput-object p3, Lio/github/lazyimmortal/sesame/ui/ListDialog;->selectModelFieldFunc:Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc;

    .line 120
    sput-object p4, Lio/github/lazyimmortal/sesame/ui/ListDialog;->hasCount:Ljava/lang/Boolean;

    const/4 p4, 0x0

    .line 122
    sput-boolean p4, Lio/github/lazyimmortal/sesame/ui/ListDialog;->isFriendWatchList:Z

    const/4 p4, 0x0

    .line 123
    sput-object p4, Lio/github/lazyimmortal/sesame/ui/ListDialog;->fwDontCollectSet:Ljava/util/Set;

    .line 124
    invoke-static {p0, p5}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->getClear(Landroid/content/Context;Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;)Lio/github/lazyimmortal/sesame/ui/ListAdapter;

    move-result-object p4

    .line 125
    invoke-virtual {p4, p2}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->setBaseList(Ljava/util/List;)V

    .line 126
    invoke-virtual {p4}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->clearFriendWatchFilter()V

    .line 127
    invoke-virtual {p4, p3}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->setSelectedList(Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc;)V

    .line 128
    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/ui/ListDialog;->showListDialog(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 129
    sput-object p5, Lio/github/lazyimmortal/sesame/ui/ListDialog;->listType:Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;

    return-void
.end method

.method public static showFriendWatch(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/util/List;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List<",
            "+",
            "Lio/github/lazyimmortal/sesame/entity/IdAndName;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 135
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lio/github/lazyimmortal/sesame/ui/ListDialog;->hasCount:Ljava/lang/Boolean;

    const/4 v1, 0x0

    .line 136
    sput-object v1, Lio/github/lazyimmortal/sesame/ui/ListDialog;->selectModelFieldFunc:Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc;

    const/4 v1, 0x1

    .line 137
    sput-boolean v1, Lio/github/lazyimmortal/sesame/ui/ListDialog;->isFriendWatchList:Z

    .line 138
    sput-object p3, Lio/github/lazyimmortal/sesame/ui/ListDialog;->fwDontCollectSet:Ljava/util/Set;

    .line 139
    sget-object v2, Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;->SHOW:Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;

    invoke-static {p0, v2}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->getClear(Landroid/content/Context;Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;)Lio/github/lazyimmortal/sesame/ui/ListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->clearFriendWatchFilter()V

    const/4 v1, 0x1

    iput-boolean v1, v2, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->fwSortEnabled:Z

    .line 140
    invoke-virtual {v2, p2}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->setBaseList(Ljava/util/List;)V

    .line 141
    invoke-static {}, Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc$-CC;->newMapInstance()Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc;

    move-result-object p2

    sput-object p2, Lio/github/lazyimmortal/sesame/ui/ListDialog;->selectModelFieldFunc:Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc;

    invoke-virtual {v2, p2}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->setSelectedList(Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc;)V

    .line 143
    invoke-virtual {v2, v0, v0, v0, p3}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->setFriendWatchFilter(ZZZLjava/util/Set;)V

    sget-object v0, Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;->SHOW:Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;

    sput-object v0, Lio/github/lazyimmortal/sesame/ui/ListDialog;->listType:Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;

    .line 144
    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/ui/ListDialog;->showListDialog(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 145
    sget-object p0, Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;->SHOW:Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;

    sput-object p0, Lio/github/lazyimmortal/sesame/ui/ListDialog;->listType:Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;

    return-void
.end method

.method public static showFriendWatchSelect(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/util/List;Ljava/util/Set;Lio/github/lazyimmortal/sesame/data/modelFieldExt/SelectModelField;)V
    .locals 4

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lio/github/lazyimmortal/sesame/ui/ListDialog;->hasCount:Ljava/lang/Boolean;

    sput-object p4, Lio/github/lazyimmortal/sesame/ui/ListDialog;->selectModelFieldFunc:Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc;

    const/4 v1, 0x1

    sput-boolean v1, Lio/github/lazyimmortal/sesame/ui/ListDialog;->isFriendWatchList:Z

    sput-object p3, Lio/github/lazyimmortal/sesame/ui/ListDialog;->fwDontCollectSet:Ljava/util/Set;

    sget-object v2, Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;->CHECK:Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;

    sput-object v2, Lio/github/lazyimmortal/sesame/ui/ListDialog;->listType:Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;

    invoke-static {p0, v2}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->getClear(Landroid/content/Context;Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;)Lio/github/lazyimmortal/sesame/ui/ListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->clearFriendWatchFilter()V

    iput-boolean v1, v2, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->fwSortEnabled:Z

    invoke-virtual {v2, p2}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->setBaseList(Ljava/util/List;)V

    invoke-virtual {v2, p4}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->setSelectedList(Lio/github/lazyimmortal/sesame/data/modelFieldExt/common/SelectModelFieldFunc;)V

    invoke-virtual {v2, v0, v0, v0, p3}, Lio/github/lazyimmortal/sesame/ui/ListAdapter;->setFriendWatchFilter(ZZZLjava/util/Set;)V

    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/ui/ListDialog;->showListDialog(Landroid/content/Context;Ljava/lang/CharSequence;)V

    sget-object v0, Lio/github/lazyimmortal/sesame/ui/ListDialog;->layout_batch_process:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    sget-object v0, Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;->CHECK:Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;

    sput-object v0, Lio/github/lazyimmortal/sesame/ui/ListDialog;->listType:Lio/github/lazyimmortal/sesame/ui/ListDialog$ListType;

    return-void
.end method

.method private static showListDialog(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 2

    .line 149
    sget-object v0, Lio/github/lazyimmortal/sesame/ui/ListDialog;->listDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eq v0, p0, :cond_1

    .line 150
    :cond_0
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/ui/ListDialog;->getListView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lio/github/lazyimmortal/sesame/R$string;->close:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    sput-object p1, Lio/github/lazyimmortal/sesame/ui/ListDialog;->listDialog:Landroidx/appcompat/app/AlertDialog;

    .line 152
    :cond_1
    sget-object p1, Lio/github/lazyimmortal/sesame/ui/ListDialog;->listDialog:Landroidx/appcompat/app/AlertDialog;

    new-instance v0, Lio/github/lazyimmortal/sesame/ui/ListDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lio/github/lazyimmortal/sesame/ui/ListDialog$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 159
    sget-object p1, Lio/github/lazyimmortal/sesame/ui/ListDialog;->listDialog:Landroidx/appcompat/app/AlertDialog;

    new-instance v0, Lio/github/lazyimmortal/sesame/ui/ListDialog$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lio/github/lazyimmortal/sesame/ui/ListDialog$$ExternalSyntheticLambda5;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 199
    sget-object p1, Lio/github/lazyimmortal/sesame/ui/ListDialog;->listDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 200
    sget-object p1, Lio/github/lazyimmortal/sesame/ui/ListDialog;->listDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 202
    sget v0, Lio/github/lazyimmortal/sesame/R$color;->button:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setTextColor(I)V

    :cond_2
    return-void
.end method
