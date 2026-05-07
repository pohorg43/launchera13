.class public Lcom/android/launcher3/model/data/SearchActionItemInfo;
.super Lcom/android/launcher3/model/data/ItemInfoWithIcon;
.source ""

# interfaces
.implements Lcom/android/launcher3/model/data/WorkspaceItemFactory;


# static fields
.field public static final FLAG_ALLOW_PINNING:I = 0x40

.field public static final FLAG_BADGE_WITH_COMPONENT_NAME:I = 0x20

.field public static final FLAG_BADGE_WITH_PACKAGE:I = 0x8

.field public static final FLAG_PRIMARY_ICON_FROM_TITLE:I = 0x10

.field public static final FLAG_SEARCH_IN_APP:I = 0x80

.field public static final FLAG_SHOULD_START:I = 0x2

.field public static final FLAG_SHOULD_START_FOR_RESULT:I = 0x6


# instance fields
.field private mFallbackPackageName:Ljava/lang/String;

.field private mFlags:I

.field private mIcon:Landroid/graphics/drawable/Icon;

.field private mIntent:Landroid/content/Intent;

.field private mIsPersonalTitle:Z

.field private mPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Icon;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/CharSequence;Z)V
    .registers 7

    invoke-direct {p0}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/model/data/SearchActionItemInfo;->mFlags:I

    iput-boolean p5, p0, Lcom/android/launcher3/model/data/SearchActionItemInfo;->mIsPersonalTitle:Z

    const/4 p5, 0x7

    iput p5, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-nez p3, :cond_11

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p3

    :cond_11
    iput-object p3, p0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    iput-object p4, p0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    const/16 p3, -0xc8

    iput p3, p0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iput-object p2, p0, Lcom/android/launcher3/model/data/SearchActionItemInfo;->mFallbackPackageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/launcher3/model/data/SearchActionItemInfo;->mIcon:Landroid/graphics/drawable/Icon;

    return-void
.end method

.method private constructor <init>(Lcom/android/launcher3/model/data/SearchActionItemInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;-><init>(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/launcher3/model/data/SearchActionItemInfo;->mFlags:I

    return-void
.end method

.method public static synthetic f(Lcom/android/launcher3/model/data/SearchActionItemInfo;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/model/data/SearchActionItemInfo;->lambda$makeWorkspaceItem$0(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object p0

    return-object p0
.end method

.method private getIntentPackageName()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/model/data/SearchActionItemInfo;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object p0, p0, Lcom/android/launcher3/model/data/SearchActionItemInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_11
    iget-object p0, p0, Lcom/android/launcher3/model/data/SearchActionItemInfo;->mFallbackPackageName:Ljava/lang/String;

    return-object p0

    :cond_14
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$makeWorkspaceItem$0(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .registers 5

    new-instance v0, Lcom/android/launcher3/model/data/PackageItemInfo;

    invoke-direct {p0}, Lcom/android/launcher3/model/data/SearchActionItemInfo;->getIntentPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v0, v1, p0}, Lcom/android/launcher3/model/data/PackageItemInfo;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIconForApp(Lcom/android/launcher3/model/data/PackageItemInfo;Z)V

    iget-object p0, p2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object p1, v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/icons/BitmapInfo;->withBadgeInfo(Lcom/android/launcher3/icons/BitmapInfo;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p0

    iput-object p0, p2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    return-object p2
.end method


# virtual methods
.method public buildProto(Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;
    .registers 3

    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/model/data/SearchActionItemInfo;->mFallbackPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem$Builder;->setPackageName(Ljava/lang/String;)Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem$Builder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/launcher3/model/data/SearchActionItemInfo;->mIsPersonalTitle:Z

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem$Builder;->setTitle(Ljava/lang/String;)Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem$Builder;

    :cond_17
    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfo;->getDefaultItemInfoBuilder()Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->setSearchActionItem(Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfo;->getContainerInfo()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->setContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    return-object p0
.end method

.method public clone()Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    .registers 2

    new-instance v0, Lcom/android/launcher3/model/data/SearchActionItemInfo;

    invoke-direct {v0, p0}, Lcom/android/launcher3/model/data/SearchActionItemInfo;-><init>(Lcom/android/launcher3/model/data/SearchActionItemInfo;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/model/data/SearchActionItemInfo;->clone()Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    move-result-object p0

    return-object p0
.end method

.method public copyFrom(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/launcher3/model/data/ItemInfo;->copyFrom(Lcom/android/launcher3/model/data/ItemInfo;)V

    check-cast p1, Lcom/android/launcher3/model/data/SearchActionItemInfo;

    iget-object v0, p1, Lcom/android/launcher3/model/data/SearchActionItemInfo;->mFallbackPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/launcher3/model/data/SearchActionItemInfo;->mFallbackPackageName:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/launcher3/model/data/SearchActionItemInfo;->mIcon:Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Lcom/android/launcher3/model/data/SearchActionItemInfo;->mIcon:Landroid/graphics/drawable/Icon;

    iget v0, p1, Lcom/android/launcher3/model/data/SearchActionItemInfo;->mFlags:I

    iput v0, p0, Lcom/android/launcher3/model/data/SearchActionItemInfo;->mFlags:I

    iget-boolean p1, p1, Lcom/android/launcher3/model/data/SearchActionItemInfo;->mIsPersonalTitle:Z

    iput-boolean p1, p0, Lcom/android/launcher3/model/data/SearchActionItemInfo;->mIsPersonalTitle:Z

    return-void
.end method

.method public getIcon()Landroid/graphics/drawable/Icon;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/model/data/SearchActionItemInfo;->mIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/model/data/SearchActionItemInfo;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public getPendingIntent()Landroid/app/PendingIntent;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/model/data/SearchActionItemInfo;->mPendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public hasFlags(I)Z
    .registers 2

    iget p0, p0, Lcom/android/launcher3/model/data/SearchActionItemInfo;->mFlags:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public makeWorkspaceItem(Landroid/content/Context;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .registers 5

    new-instance v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {v0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iput-object v1, v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v1, p0, Lcom/android/launcher3/model/data/SearchActionItemInfo;->mIntent:Landroid/content/Intent;

    iput-object v1, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/launcher3/model/data/SearchActionItemInfo;->hasFlags(I)Z

    move-result v1

    if-eqz v1, :cond_1e

    iget v1, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->options:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->options:I

    :cond_1e
    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/o0;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/launcher3/o0;-><init>(Lcom/android/launcher3/model/data/SearchActionItemInfo;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/LauncherModel;->updateAndBindWorkspaceItem(Ljava/util/function/Supplier;)V

    return-object v0
.end method

.method public setFlags(I)V
    .registers 3

    iget v0, p0, Lcom/android/launcher3/model/data/SearchActionItemInfo;->mFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/launcher3/model/data/SearchActionItemInfo;->mFlags:I

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/model/data/SearchActionItemInfo;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_f

    if-nez p1, :cond_7

    goto :goto_f

    :cond_7
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "SearchActionItemInfo can only have either an Intent or a PendingIntent"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    :goto_f
    iput-object p1, p0, Lcom/android/launcher3/model/data/SearchActionItemInfo;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method public setPendingIntent(Landroid/app/PendingIntent;)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/model/data/SearchActionItemInfo;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_f

    if-nez p1, :cond_7

    goto :goto_f

    :cond_7
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "SearchActionItemInfo can only have either an Intent or a PendingIntent"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    :goto_f
    iput-object p1, p0, Lcom/android/launcher3/model/data/SearchActionItemInfo;->mPendingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public supportsPinning()Z
    .registers 2

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/data/SearchActionItemInfo;->hasFlags(I)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/android/launcher3/model/data/SearchActionItemInfo;->getIntentPackageName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method
