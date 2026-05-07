.class public Lcom/android/common/util/FolderNameHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final FOLDER_TITLE_MARK:Ljava/lang/String; = "\u00a0"

.field private static final TAG:Ljava/lang/String; = "FolderNameHelper"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDisplayName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 10

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "FolderNameHelper"

    if-eqz v0, :cond_1e

    const-string/jumbo p1, "title is emnpt."

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f120506

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1e
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "\u00a0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_32

    const-string/jumbo p0, "title is not start with FOLDER_TITLE_MARK."

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_32
    invoke-static {p0}, Lcom/android/common/util/FolderNameHelper;->getSysFolderId(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/android/common/util/FolderNameHelper;->getSysFolderName(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/android/common/util/FolderNameHelper;->getRecommendFolderId(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/android/common/util/FolderNameHelper;->getRecommendFolderName(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v0

    array-length v6, v2

    const/4 v7, 0x0

    if-ne v5, v6, :cond_59

    move v5, v7

    :goto_48
    array-length v6, v0

    if-ge v5, v6, :cond_59

    aget-object v6, v0, v5

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_56

    aget-object p0, v2, v5

    return-object p0

    :cond_56
    add-int/lit8 v5, v5, 0x1

    goto :goto_48

    :cond_59
    array-length v0, v3

    array-length v2, v4

    if-ne v0, v2, :cond_6e

    :goto_5d
    array-length v0, v4

    if-ge v7, v0, :cond_6e

    aget-object v0, v3, v7

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6b

    aget-object p0, v4, v7

    return-object p0

    :cond_6b
    add-int/lit8 v7, v7, 0x1

    goto :goto_5d

    :cond_6e
    const-string v0, "Other Apps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_87

    const-string p1, "got other apps folder displayName"

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f12050c

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_87
    const-string/jumbo p0, "return displayName:"

    invoke-static {p0, p1, v1}, Lcom/android/common/multiapp/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private static getRecommendFolderId(Landroid/content/Context;)[Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f030043

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRecommendFolderName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/common/util/FolderNameHelper;->getRecommendFolderNameId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p0}, Lcom/android/common/util/FolderNameHelper;->getRecommendFolderId(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    if-ltz p1, :cond_10

    array-length p2, p0

    if-ge p1, p2, :cond_10

    aget-object p0, p0, p1

    return-object p0

    :cond_10
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getRecommendFolderName(Landroid/content/Context;)[Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f030044

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getRecommendFolderNameId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    invoke-static {p0}, Lcom/android/common/LauncherAssetManager;->getInstance(Landroid/content/Context;)Lcom/android/common/LauncherAssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/common/LauncherAssetManager;->getRecommendFolderNameId(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne v0, p1, :cond_f

    invoke-virtual {p0, p2}, Lcom/android/common/LauncherAssetManager;->getRecommendFolderNameId(Ljava/lang/String;)I

    move-result p1

    :cond_f
    return p1
.end method

.method private static getSysFolderId(Landroid/content/Context;)[Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f03005a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getSysFolderName(Landroid/content/Context;)[Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f03005b

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
