.class public Lcom/android/launcher3/iconrender/impl/DownloadProgressIconRenderer;
.super Lcom/android/launcher3/iconrender/AbstractIconRenderer;
.source ""

# interfaces
.implements Lcom/android/launcher3/iconrender/impl/IOplusDownloadProgressHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/iconrender/impl/DownloadProgressIconRenderer$InstallAnimationListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/iconrender/AbstractIconRenderer<",
        "Lcom/android/launcher3/iconrender/IconRenderParams;",
        ">;",
        "Lcom/android/launcher3/iconrender/impl/IOplusDownloadProgressHandler;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DownloadProgressIconRenderer"


# instance fields
.field private mCanvasSavePoint:I

.field private mCurrentItemInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

.field private mDownloadProgressDrawable:Lcom/android/launcher/download/DownloadProgressDrawable;

.field private final mInstallAnimationListener:Lcom/android/launcher3/iconrender/impl/DownloadProgressIconRenderer$InstallAnimationListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/iconrender/RenderManager;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/iconrender/AbstractIconRenderer;-><init>(Landroid/content/Context;Lcom/android/launcher3/iconrender/RenderManager;)V

    new-instance p1, Lcom/android/launcher3/iconrender/impl/DownloadProgressIconRenderer$InstallAnimationListener;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/launcher3/iconrender/impl/DownloadProgressIconRenderer$InstallAnimationListener;-><init>(Lcom/android/launcher3/iconrender/impl/DownloadProgressIconRenderer;Lcom/android/launcher3/iconrender/impl/DownloadProgressIconRenderer$1;)V

    iput-object p1, p0, Lcom/android/launcher3/iconrender/impl/DownloadProgressIconRenderer;->mInstallAnimationListener:Lcom/android/launcher3/iconrender/impl/DownloadProgressIconRenderer$InstallAnimationListener;

    const-class p1, Lcom/android/launcher3/iconrender/impl/IOplusDownloadProgressHandler;

    invoke-virtual {p2, p1, p0}, Lcom/android/launcher3/iconrender/RenderManager;->registerExport(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/launcher3/iconrender/impl/DownloadProgressIconRenderer;)Lcom/android/launcher3/iconrender/RenderManager;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/iconrender/AbstractRenderer;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    return-object p0
.end method


# virtual methods
.method public acceptDraw(Lcom/android/launcher3/iconrender/RenderManager;Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/iconrender/IconRenderParams;)Z
    .registers 5

    invoke-virtual {p0}, Lcom/android/launcher3/iconrender/impl/DownloadProgressIconRenderer;->getCurrentItemInfo()Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    move-result-object p1

    const/4 p3, 0x1

    if-eqz p1, :cond_18

    invoke-virtual {p2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_18

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->isNewInstallingOrUpgradingApp()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/launcher3/iconrender/impl/DownloadProgressIconRenderer;->mDownloadProgressDrawable:Lcom/android/launcher/download/DownloadProgressDrawable;

    if-eqz v0, :cond_18

    return p3

    :cond_18
    invoke-virtual {p0}, Lcom/android/launcher3/iconrender/impl/DownloadProgressIconRenderer;->isFinishAnimationRunning()Z

    move-result p0

    if-eqz p0, :cond_1f

    return p3

    :cond_1f
    invoke-virtual {p2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p0

    if-eq p1, p0, :cond_30

    instance-of p1, p0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz p1, :cond_30

    check-cast p0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfo;->isNewInstallingOrUpgradingApp()Z

    move-result p0

    return p0

    :cond_30
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic acceptDraw(Lcom/android/launcher3/iconrender/RenderManager;Lcom/android/launcher3/BubbleTextView;Ljava/lang/Object;)Z
    .registers 4

    check-cast p3, Lcom/android/launcher3/iconrender/IconRenderParams;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/iconrender/impl/DownloadProgressIconRenderer;->acceptDraw(Lcom/android/launcher3/iconrender/RenderManager;Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/iconrender/IconRenderParams;)Z

    move-result p0

    return p0
.end method

.method public clearDownloadDrawable()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/iconrender/impl/DownloadProgressIconRenderer;->mDownloadProgressDrawable:Lcom/android/launcher/download/DownloadProgressDrawable;

    return-void
.end method

.method public createDownloadProgressDrawable(Landroid/content/Context;Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/model/data/ItemInfoWithIcon;Z)Lcom/android/launcher/download/DownloadProgressDrawable;
    .registers 6

    new-instance v0, Lcom/android/launcher/download/DownloadProgressDrawable;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/launcher/download/DownloadProgressDrawable;-><init>(Landroid/content/Context;Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/model/data/ItemInfoWithIcon;Z)V

    iput-object v0, p0, Lcom/android/launcher3/iconrender/impl/DownloadProgressIconRenderer;->mDownloadProgressDrawable:Lcom/android/launcher/download/DownloadProgressDrawable;

    return-object v0
.end method

.method public getCurrentItemInfo()Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/iconrender/impl/DownloadProgressIconRenderer;->mCurrentItemInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    return-object p0
.end method

.method public handleDownloadProgressChanged(Lcom/android/launcher3/model/data/ItemInfoWithIcon;IZZ)Z
    .registers 16

    iget-object v0, p0, Lcom/android/launcher3/iconrender/impl/DownloadProgressIconRenderer;->mDownloadProgressDrawable:Lcom/android/launcher/download/DownloadProgressDrawable;

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->isNewInstallingOrUpgradingApp()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {p0}, Lcom/android/launcher3/iconrender/impl/DownloadProgressIconRenderer;->clearDownloadDrawable()V

    const/4 p0, 0x0

    return p0

    :cond_d
    iget-object v1, p0, Lcom/android/launcher3/iconrender/AbstractRenderer;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    invoke-virtual {v1}, Lcom/android/launcher3/iconrender/RenderManager;->getHostView()Lcom/android/launcher3/BubbleTextView;

    move-result-object v1

    const-string v2, "DownloadProgressIconRenderer"

    if-eqz v0, :cond_52

    invoke-virtual {p0}, Lcom/android/launcher3/iconrender/impl/DownloadProgressIconRenderer;->getCurrentItemInfo()Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    move-result-object v3

    if-eq v3, p1, :cond_1e

    goto :goto_52

    :cond_1e
    iget p4, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    const/high16 v3, -0x80000000

    and-int/2addr p4, v3

    if-eqz p4, :cond_10d

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "oplus download icon changed!"

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v2, p4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/launcher3/BubbleTextView;->getWrapper()Lcom/android/launcher3/IBubbleTextViewWrapper;

    move-result-object p4

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->newIcon(Landroid/content/Context;)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v1

    invoke-interface {p4, v1}, Lcom/android/launcher3/IBubbleTextViewWrapper;->setIcon(Lcom/android/launcher3/icons/FastBitmapDrawable;)V

    iget p4, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    const v1, 0x7fffffff

    and-int/2addr p4, v1

    iput p4, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    goto/16 :goto_10d

    :cond_52
    :goto_52
    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, v1, p1, p4}, Lcom/android/launcher3/iconrender/impl/DownloadProgressIconRenderer;->createDownloadProgressDrawable(Landroid/content/Context;Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/model/data/ItemInfoWithIcon;Z)Lcom/android/launcher/download/DownloadProgressDrawable;

    move-result-object v0

    iget-object p4, p0, Lcom/android/launcher3/iconrender/impl/DownloadProgressIconRenderer;->mInstallAnimationListener:Lcom/android/launcher3/iconrender/impl/DownloadProgressIconRenderer$InstallAnimationListener;

    invoke-virtual {v0, p4}, Lcom/android/launcher/download/DownloadProgressDrawable;->setInstallAnimationFinishCallback(Lcom/android/launcher/download/DownloadProgressDrawable$IInstallAnimationListener;)V

    invoke-static {}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->getSInstance()Lcom/android/launcher/folder/download/FolderRecommendUtils;

    move-result-object p4

    invoke-virtual {p4, v1}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->findFolderIcon(Landroid/view/View;)Lcom/android/launcher3/folder/OplusFolder;

    move-result-object p4

    if-eqz p4, :cond_b6

    const-string v3, "handleDownloadProgressChanged: folder = "

    invoke-static {v3}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p4, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v4, v4, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/android/launcher3/folder/Folder;->getFolderIcon()Lcom/android/launcher3/folder/FolderIcon;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/folder/OplusFolderIcon;

    new-instance v10, Lcom/android/launcher/download/DownloadProgressPreviewDrawable;

    iget-object v5, p0, Lcom/android/launcher3/iconrender/AbstractRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget-object v4, p0, Lcom/android/launcher3/iconrender/AbstractRenderer;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v4}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v4

    iget v7, v4, Lcom/android/launcher3/DeviceProfile;->folderChildIconSizePx:I

    invoke-virtual {p4}, Lcom/android/launcher3/folder/Folder;->getFolderIcon()Lcom/android/launcher3/folder/FolderIcon;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/launcher3/folder/FolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/PreviewItemManager;

    move-result-object v8

    const/4 v9, 0x0

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher/download/DownloadProgressPreviewDrawable;-><init>(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfoWithIcon;ILcom/android/launcher3/folder/PreviewItemManager;Z)V

    invoke-virtual {v3}, Lcom/android/launcher3/folder/OplusFolderIcon;->getDownloadCache()Lcom/android/launcher3/folder/FolderDownloadDrawableCache;

    move-result-object p4

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {p4, v3, v10}, Lcom/android/launcher3/folder/FolderDownloadDrawableCache;->addDownloadDrawable(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher/download/DownloadProgressPreviewDrawable;)V

    :cond_b6
    const/4 p4, 0x0

    invoke-virtual {v1}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    instance-of v3, v3, Lcom/oplus/icons/OplusFastBitmapDrawable;

    if-eqz v3, :cond_c5

    invoke-virtual {v1}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    check-cast p4, Lcom/oplus/icons/OplusFastBitmapDrawable;

    :cond_c5
    if-eqz p4, :cond_df

    invoke-virtual {p4}, Lcom/oplus/icons/OplusFastBitmapDrawable;->getBadge()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher/folder/download/view/RecommendDotDrawable;

    if-nez v3, :cond_df

    invoke-virtual {v1}, Lcom/android/launcher3/BubbleTextView;->getWrapper()Lcom/android/launcher3/IBubbleTextViewWrapper;

    move-result-object v3

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->newIcon(Landroid/content/Context;)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/android/launcher3/IBubbleTextViewWrapper;->setIcon(Lcom/android/launcher3/icons/FastBitmapDrawable;)V

    goto :goto_fa

    :cond_df
    invoke-virtual {p0}, Lcom/android/launcher3/iconrender/impl/DownloadProgressIconRenderer;->getCurrentItemInfo()Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    move-result-object v3

    if-eqz v3, :cond_fa

    invoke-virtual {p0}, Lcom/android/launcher3/iconrender/impl/DownloadProgressIconRenderer;->getCurrentItemInfo()Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    move-result-object v3

    if-eq v3, p1, :cond_fa

    invoke-virtual {v1}, Lcom/android/launcher3/BubbleTextView;->getWrapper()Lcom/android/launcher3/IBubbleTextViewWrapper;

    move-result-object v3

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->newIcon(Landroid/content/Context;)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/android/launcher3/IBubbleTextViewWrapper;->setIcon(Lcom/android/launcher3/icons/FastBitmapDrawable;)V

    :cond_fa
    :goto_fa
    if-eqz p4, :cond_10d

    invoke-virtual {p4}, Lcom/oplus/icons/OplusFastBitmapDrawable;->getBadge()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher/folder/download/view/RecommendDotDrawable;

    if-eqz v1, :cond_10d

    invoke-virtual {p4}, Lcom/oplus/icons/OplusFastBitmapDrawable;->getBadge()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    check-cast p4, Lcom/android/launcher/folder/download/view/RecommendDotDrawable;

    invoke-static {p4}, Lcom/android/launcher/folder/download/view/FolderDotAnimManager;->startDotAnim(Lcom/android/launcher/folder/download/view/RecommendDotDrawable;)V

    :cond_10d
    :goto_10d
    invoke-virtual {p0, p1}, Lcom/android/launcher3/iconrender/impl/DownloadProgressIconRenderer;->setCurrentItemInfo(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_135

    const-string p0, "applyColorProgressLevel: mInstallState: "

    invoke-static {p0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {p1}, Lcom/android/launcher/download/InstallState;->value()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", progressLevel: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", needAnimation: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p3, v2}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_135
    invoke-virtual {v0, p2, p3}, Lcom/android/launcher/download/DownloadProgressDrawable;->onInstallStateOrProgressChange(IZ)V

    const/4 p0, 0x1

    return p0
.end method

.method public handleDownloadProgressFinish(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/iconrender/impl/DownloadProgressIconRenderer;->mDownloadProgressDrawable:Lcom/android/launcher/download/DownloadProgressDrawable;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Lcom/android/launcher/download/DownloadProgressDrawable;->finishProgressAnimation(Z)V

    :cond_7
    return-void
.end method

.method public isFinishAnimationRunning()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/iconrender/impl/DownloadProgressIconRenderer;->mDownloadProgressDrawable:Lcom/android/launcher/download/DownloadProgressDrawable;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/android/launcher/download/DownloadProgressDrawable;->isFinishAnimationRunning()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public onViewReset(Lcom/android/launcher3/BubbleTextView;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/launcher3/iconrender/AbstractRenderer;->onViewReset(Lcom/android/launcher3/BubbleTextView;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/iconrender/impl/DownloadProgressIconRenderer;->mDownloadProgressDrawable:Lcom/android/launcher/download/DownloadProgressDrawable;

    iput-object p1, p0, Lcom/android/launcher3/iconrender/impl/DownloadProgressIconRenderer;->mCurrentItemInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    return-void
.end method

.method public renderAfterIconDrawn(Landroid/graphics/Canvas;Lcom/android/launcher3/iconrender/RenderManager;)V
    .registers 3

    iget p0, p0, Lcom/android/launcher3/iconrender/impl/DownloadProgressIconRenderer;->mCanvasSavePoint:I

    if-lez p0, :cond_7

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_7
    return-void
.end method

.method public renderAsBitmapCover()Landroid/graphics/drawable/Drawable;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/iconrender/impl/DownloadProgressIconRenderer;->mDownloadProgressDrawable:Lcom/android/launcher/download/DownloadProgressDrawable;

    return-object p0
.end method

.method public renderBeforeIconDrawn(Landroid/graphics/Canvas;Lcom/android/launcher3/iconrender/RenderManager;)V
    .registers 3

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/iconrender/impl/DownloadProgressIconRenderer;->mCanvasSavePoint:I

    return-void
.end method

.method public setCurrentItemInfo(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/iconrender/impl/DownloadProgressIconRenderer;->mCurrentItemInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    return-void
.end method
