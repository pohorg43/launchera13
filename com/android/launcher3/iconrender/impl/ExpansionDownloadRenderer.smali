.class public Lcom/android/launcher3/iconrender/impl/ExpansionDownloadRenderer;
.super Lcom/android/launcher3/iconrender/AbstractTitlePrefixRenderer;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "ExpansionDownloadRenderer"


# instance fields
.field private mDrawable:Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/iconrender/RenderManager;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/iconrender/AbstractTitlePrefixRenderer;-><init>(Landroid/content/Context;Lcom/android/launcher3/iconrender/RenderManager;)V

    return-void
.end method

.method private getProgress(Lcom/android/launcher3/model/data/ItemInfo;)I
    .registers 6

    instance-of p0, p1, Lcom/android/launcher/model/data/PromiseAppInfo;

    const-string v0, "ExpansionDownloadRenderer"

    const-string v1, "InstallApp"

    if-eqz p0, :cond_31

    move-object p0, p1

    check-cast p0, Lcom/android/launcher/model/data/PromiseAppInfo;

    iget v2, p0, Lcom/android/launcher/model/data/PromiseAppInfo;->level:I

    iget-object p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {p0}, Lcom/android/launcher/download/InstallState;->isFromOplusAppStore()Z

    move-result p0

    if-eqz p0, :cond_16

    goto :goto_57

    :cond_16
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_57

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ItemInfo is not OplusStore, expansionDownload update cancel."

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_57

    :cond_31
    instance-of p0, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz p0, :cond_3c

    check-cast p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getInstallProgress()I

    move-result v2

    goto :goto_57

    :cond_3c
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_56

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ItemInfo is not PromiseAppInfo or WorkspaceItemInfo, expansionDownload update cancel."

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_56
    const/4 v2, 0x0

    :cond_57
    :goto_57
    return v2
.end method


# virtual methods
.method public accept(Lcom/android/launcher3/iconrender/RenderManager;Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfoWithIcon;Lcom/android/launcher3/iconrender/TitleRenderParams;)Z
    .registers 10

    :try_start_0
    invoke-virtual {p3}, Lcom/android/launcher3/model/data/ItemInfo;->isOplusExpansionDownloadingApp()Z

    move-result p4
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_55

    const/4 v0, 0x0

    if-nez p4, :cond_f

    invoke-virtual {p1}, Lcom/android/launcher3/iconrender/RenderManager;->getHostView()Lcom/android/launcher3/BubbleTextView;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/iconrender/impl/ExpansionDownloadRenderer;->onViewReset(Lcom/android/launcher3/BubbleTextView;)V

    return v0

    :cond_f
    :try_start_f
    invoke-static {p2}, Lcom/android/launcher/download/DownloadAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/download/DownloadAppsManager;

    move-result-object p2

    invoke-virtual {p3}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/android/launcher/download/DownloadAppsManager;->getDownloadInfoByPkgName(Ljava/lang/String;)Lcom/android/launcher/download/OplusPackageInstallInfo;

    move-result-object p2

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p4
    :try_end_1f
    .catchall {:try_start_f .. :try_end_1f} :catchall_55

    const/4 v1, 0x1

    const-string v2, "ExpansionDownloadRenderer"

    const-string v3, "InstallApp"

    if-eqz p4, :cond_36

    :try_start_26
    const-string p4, "Expansion download applyLabel,item=%s,downloadInfo=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p3, v4, v0

    aput-object p2, v4, v1

    invoke-static {p4, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {v3, v2, p3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_36
    if-eqz p2, :cond_42

    iget-object p2, p2, Lcom/android/launcher/download/OplusPackageInstallInfo;->mState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {p2}, Lcom/android/launcher/download/InstallState;->isOplusExpansionsType()Z

    move-result p2

    if-nez p2, :cond_41

    goto :goto_42

    :cond_41
    return v1

    :cond_42
    :goto_42
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p2

    if-eqz p2, :cond_4d

    const-string p2, "downloadInfo is not expansions type!"

    invoke-static {v3, v2, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4d
    .catchall {:try_start_26 .. :try_end_4d} :catchall_55

    :cond_4d
    invoke-virtual {p1}, Lcom/android/launcher3/iconrender/RenderManager;->getHostView()Lcom/android/launcher3/BubbleTextView;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/iconrender/impl/ExpansionDownloadRenderer;->onViewReset(Lcom/android/launcher3/BubbleTextView;)V

    return v0

    :catchall_55
    move-exception p2

    invoke-virtual {p1}, Lcom/android/launcher3/iconrender/RenderManager;->getHostView()Lcom/android/launcher3/BubbleTextView;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/iconrender/impl/ExpansionDownloadRenderer;->onViewReset(Lcom/android/launcher3/BubbleTextView;)V

    throw p2
.end method

.method public createPrefixDrawable(Landroid/content/Context;Lcom/android/launcher3/iconrender/TitleRenderParams;)Landroid/graphics/drawable/Drawable;
    .registers 4

    new-instance p1, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;

    iget-object v0, p0, Lcom/android/launcher3/iconrender/AbstractRenderer;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    invoke-virtual {v0}, Lcom/android/launcher3/iconrender/RenderManager;->getHostView()Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    iget-object p2, p2, Lcom/android/launcher3/iconrender/TitleRenderParams;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    invoke-direct {p1, v0, p2}, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;-><init>(Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/model/data/ItemInfo;)V

    iput-object p1, p0, Lcom/android/launcher3/iconrender/impl/ExpansionDownloadRenderer;->mDrawable:Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;

    iget-object p2, p0, Lcom/android/launcher3/iconrender/AbstractRenderer;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    invoke-virtual {p2}, Lcom/android/launcher3/iconrender/RenderManager;->getCurrentTextAppearance()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->onTextAppearanceChanged(I)V

    iget-object p0, p0, Lcom/android/launcher3/iconrender/impl/ExpansionDownloadRenderer;->mDrawable:Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;

    return-object p0
.end method

.method public onTextAppearanceChanged(I)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/launcher3/iconrender/AbstractRenderer;->onTextAppearanceChanged(I)V

    iget-object p0, p0, Lcom/android/launcher3/iconrender/impl/ExpansionDownloadRenderer;->mDrawable:Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;

    if-eqz p0, :cond_a

    invoke-virtual {p0, p1}, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->onTextAppearanceChanged(I)V

    :cond_a
    return-void
.end method

.method public onViewReset(Lcom/android/launcher3/BubbleTextView;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/launcher3/iconrender/AbstractTitlePrefixRenderer;->onViewReset(Lcom/android/launcher3/BubbleTextView;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/iconrender/impl/ExpansionDownloadRenderer;->mDrawable:Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;

    return-void
.end method

.method public priority()I
    .registers 1

    const/16 p0, 0xb

    return p0
.end method

.method public renderInner(Lcom/android/launcher3/iconrender/TitleRenderResult;Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/android/launcher3/iconrender/TitleRenderParams;)V
    .registers 6
    .param p1  # Lcom/android/launcher3/iconrender/TitleRenderResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher3/iconrender/AbstractTitlePrefixRenderer;->renderInner(Lcom/android/launcher3/iconrender/TitleRenderResult;Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/android/launcher3/iconrender/TitleRenderParams;)V

    iget-object p1, p4, Lcom/android/launcher3/iconrender/TitleRenderParams;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    invoke-virtual {p0}, Lcom/android/launcher3/iconrender/AbstractTitlePrefixRenderer;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_3e

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p2

    if-eqz p2, :cond_29

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "renderInner.info = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "InstallApp"

    const-string v0, "ExpansionDownloadRenderer"

    invoke-static {p3, v0, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    invoke-direct {p0, p1}, Lcom/android/launcher3/iconrender/impl/ExpansionDownloadRenderer;->getProgress(Lcom/android/launcher3/model/data/ItemInfo;)I

    move-result p2

    invoke-virtual {p0}, Lcom/android/launcher3/iconrender/AbstractTitlePrefixRenderer;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {p1}, Lcom/android/launcher/download/InstallState;->getInstallState()I

    move-result p1

    iget-boolean p3, p4, Lcom/android/launcher3/iconrender/TitleRenderParams;->needDownloadAnimation:Z

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->applyProgressAndState(IIZ)V

    :cond_3e
    return-void
.end method
