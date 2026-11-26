package io.github.lazyimmortal.sesame.entity;

import io.github.lazyimmortal.sesame.util.StringUtil;

/* JADX INFO: loaded from: classes.dex */
public class UserEntity {
    private final String account;
    private final String firstAlphaChar;
    private final Integer friendStatus;
    private final Long friendTime;
    private final String fullName;
    private final String headImageUrl;
    private final Boolean isDelete;
    private final String maskName;
    private final String nickName;
    private final String realName;
    private final Long registerTime;
    private final String remarkName;
    private final String showName;
    private final String userId;

    public String getUserId() {
        return this.userId;
    }

    public String getAccount() {
        return this.account;
    }

    public Integer getFriendStatus() {
        return this.friendStatus;
    }

    public String getRealName() {
        return this.realName;
    }

    public String getNickName() {
        return this.nickName;
    }

    public String getRemarkName() {
        return this.remarkName;
    }

    public String getShowName() {
        return this.showName;
    }

    public String getMaskName() {
        return this.maskName;
    }

    public String getFullName() {
        return this.fullName;
    }

    public String getHeadImageUrl() {
        return this.headImageUrl;
    }

    public String getFirstAlphaChar() {
        return this.firstAlphaChar;
    }

    public Long getFriendTime() {
        return this.friendTime;
    }

    public Long getRegisterTime() {
        return this.registerTime;
    }

    public Boolean getIsDelete() {
        return this.isDelete;
    }

    public UserEntity(String str, String str2, Integer num, String str3, String str4, String str5) {
        this(str, str2, num, str3, str4, str5, null, null, null, null, null);
    }

    public UserEntity(String str, String str2, Integer num, String str3, String str4, String str5, String str6, String str7, Long l, Long l2, Boolean bool) {
        String str8;
        this.userId = str;
        this.account = str2;
        this.friendStatus = num;
        this.realName = str3;
        this.nickName = str4;
        this.remarkName = str5;
        this.headImageUrl = str6;
        this.firstAlphaChar = str7;
        this.friendTime = l;
        this.registerTime = l2;
        this.isDelete = bool;
        str4 = StringUtil.isEmpty(str5) ? str4 : str5;
        if (str3 == null || str3.length() <= 1) {
            str8 = str3;
        } else {
            str8 = "*" + str3.substring(1);
        }
        this.showName = str4;
        this.maskName = str4 + "|" + str8;
        this.fullName = str4 + "|" + str3 + "(" + str2 + ")";
    }

    public static class UserDto {
        private String account;
        private String firstAlphaChar;
        private Integer friendStatus;
        private Long friendTime;
        private String headImageUrl;
        private Boolean isDelete;
        private String nickName;
        private String realName;
        private Long registerTime;
        private String remarkName;
        private String showName;
        private String userId;

        protected boolean canEqual(Object obj) {
            return obj instanceof UserDto;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof UserDto)) {
                return false;
            }
            UserDto userDto = (UserDto) obj;
            if (!userDto.canEqual(this)) {
                return false;
            }
            Integer friendStatus = getFriendStatus();
            Integer friendStatus2 = userDto.getFriendStatus();
            if (friendStatus != null ? !friendStatus.equals(friendStatus2) : friendStatus2 != null) {
                return false;
            }
            Long friendTime = getFriendTime();
            Long friendTime2 = userDto.getFriendTime();
            if (friendTime != null ? !friendTime.equals(friendTime2) : friendTime2 != null) {
                return false;
            }
            Long registerTime = getRegisterTime();
            Long registerTime2 = userDto.getRegisterTime();
            if (registerTime != null ? !registerTime.equals(registerTime2) : registerTime2 != null) {
                return false;
            }
            Boolean isDelete = getIsDelete();
            Boolean isDelete2 = userDto.getIsDelete();
            if (isDelete != null ? !isDelete.equals(isDelete2) : isDelete2 != null) {
                return false;
            }
            String userId = getUserId();
            String userId2 = userDto.getUserId();
            if (userId != null ? !userId.equals(userId2) : userId2 != null) {
                return false;
            }
            String account = getAccount();
            String account2 = userDto.getAccount();
            if (account != null ? !account.equals(account2) : account2 != null) {
                return false;
            }
            String realName = getRealName();
            String realName2 = userDto.getRealName();
            if (realName != null ? !realName.equals(realName2) : realName2 != null) {
                return false;
            }
            String nickName = getNickName();
            String nickName2 = userDto.getNickName();
            if (nickName != null ? !nickName.equals(nickName2) : nickName2 != null) {
                return false;
            }
            String remarkName = getRemarkName();
            String remarkName2 = userDto.getRemarkName();
            if (remarkName != null ? !remarkName.equals(remarkName2) : remarkName2 != null) {
                return false;
            }
            String showName = getShowName();
            String showName2 = userDto.getShowName();
            if (showName != null ? !showName.equals(showName2) : showName2 != null) {
                return false;
            }
            String headImageUrl = getHeadImageUrl();
            String headImageUrl2 = userDto.getHeadImageUrl();
            if (headImageUrl != null ? !headImageUrl.equals(headImageUrl2) : headImageUrl2 != null) {
                return false;
            }
            String firstAlphaChar = getFirstAlphaChar();
            String firstAlphaChar2 = userDto.getFirstAlphaChar();
            return firstAlphaChar != null ? firstAlphaChar.equals(firstAlphaChar2) : firstAlphaChar2 == null;
        }

        public int hashCode() {
            Integer friendStatus = getFriendStatus();
            int iHashCode = friendStatus == null ? 43 : friendStatus.hashCode();
            Long friendTime = getFriendTime();
            int iHashCode2 = ((iHashCode + 59) * 59) + (friendTime == null ? 43 : friendTime.hashCode());
            Long registerTime = getRegisterTime();
            int iHashCode3 = (iHashCode2 * 59) + (registerTime == null ? 43 : registerTime.hashCode());
            Boolean isDelete = getIsDelete();
            int iHashCode4 = (iHashCode3 * 59) + (isDelete == null ? 43 : isDelete.hashCode());
            String userId = getUserId();
            int iHashCode5 = (iHashCode4 * 59) + (userId == null ? 43 : userId.hashCode());
            String account = getAccount();
            int iHashCode6 = (iHashCode5 * 59) + (account == null ? 43 : account.hashCode());
            String realName = getRealName();
            int iHashCode7 = (iHashCode6 * 59) + (realName == null ? 43 : realName.hashCode());
            String nickName = getNickName();
            int iHashCode8 = (iHashCode7 * 59) + (nickName == null ? 43 : nickName.hashCode());
            String remarkName = getRemarkName();
            int iHashCode9 = (iHashCode8 * 59) + (remarkName == null ? 43 : remarkName.hashCode());
            String showName = getShowName();
            int iHashCode10 = (iHashCode9 * 59) + (showName == null ? 43 : showName.hashCode());
            String headImageUrl = getHeadImageUrl();
            int iHashCode11 = (iHashCode10 * 59) + (headImageUrl == null ? 43 : headImageUrl.hashCode());
            String firstAlphaChar = getFirstAlphaChar();
            return (iHashCode11 * 59) + (firstAlphaChar != null ? firstAlphaChar.hashCode() : 43);
        }

        public void setAccount(String str) {
            this.account = str;
        }

        public void setFirstAlphaChar(String str) {
            this.firstAlphaChar = str;
        }

        public void setFriendStatus(Integer num) {
            this.friendStatus = num;
        }

        public void setFriendTime(Long l) {
            this.friendTime = l;
        }

        public void setHeadImageUrl(String str) {
            this.headImageUrl = str;
        }

        public void setIsDelete(Boolean bool) {
            this.isDelete = bool;
        }

        public void setNickName(String str) {
            this.nickName = str;
        }

        public void setRealName(String str) {
            this.realName = str;
        }

        public void setRegisterTime(Long l) {
            this.registerTime = l;
        }

        public void setRemarkName(String str) {
            this.remarkName = str;
        }

        public void setShowName(String str) {
            this.showName = str;
        }

        public void setUserId(String str) {
            this.userId = str;
        }

        public String toString() {
            return "UserEntity.UserDto(userId=" + getUserId() + ", account=" + getAccount() + ", friendStatus=" + getFriendStatus() + ", realName=" + getRealName() + ", nickName=" + getNickName() + ", remarkName=" + getRemarkName() + ", showName=" + getShowName() + ", headImageUrl=" + getHeadImageUrl() + ", firstAlphaChar=" + getFirstAlphaChar() + ", friendTime=" + getFriendTime() + ", registerTime=" + getRegisterTime() + ", isDelete=" + getIsDelete() + ")";
        }

        public String getUserId() {
            return this.userId;
        }

        public String getAccount() {
            return this.account;
        }

        public Integer getFriendStatus() {
            return this.friendStatus;
        }

        public String getRealName() {
            return this.realName;
        }

        public String getNickName() {
            return this.nickName;
        }

        public String getRemarkName() {
            return this.remarkName;
        }

        public String getShowName() {
            return this.showName;
        }

        public String getHeadImageUrl() {
            return this.headImageUrl;
        }

        public String getFirstAlphaChar() {
            return this.firstAlphaChar;
        }

        public Long getFriendTime() {
            return this.friendTime;
        }

        public Long getRegisterTime() {
            return this.registerTime;
        }

        public Boolean getIsDelete() {
            return this.isDelete;
        }

        public UserEntity toEntity() {
            return new UserEntity(this.userId, this.account, this.friendStatus, this.realName, this.nickName, this.remarkName, this.headImageUrl, this.firstAlphaChar, this.friendTime, this.registerTime, this.isDelete);
        }
    }
}
