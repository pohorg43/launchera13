.class public Lcom/android/launcher/download/DownloadProgressPreviewDrawable;
.super Lcom/oplus/icons/AbstractCoverDrawable;
.source ""


# instance fields
.field private mCanvasSavePoint:I

.field private final mDownloadProgressDrawable:Lcom/android/launcher/download/DownloadProgressDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfoWithIcon;ILcom/android/launcher3/folder/PreviewItemManager;Z)V
    .registers 8

    invoke-direct {p0}, Lcom/oplus/icons/AbstractCoverDrawable;-><init>()V

    new-instance v0, Lcom/android/launcher/download/DownloadProgressDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2, p5}, Lcom/android/launcher/download/DownloadProgressDrawable;-><init>(Landroid/content/Context;Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/model/data/ItemInfoWithIcon;Z)V

    iput-object v0, p0, Lcom/android/launcher/download/DownloadProgressPreviewDrawable;->mDownloadProgressDrawable:Lcom/android/launcher/download/DownloadProgressDrawable;

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Landroidx/core/view/a;

    invoke-direct {p0, p4}, Landroidx/core/view/a;-><init>(Lcom/android/launcher3/folder/PreviewItemManager;)V

    invoke-virtual {v0, p0}, Lcom/android/launcher/download/DownloadProgressDrawable;->setInvalidateDelegate(Lcom/android/launcher/download/DownloadProgressDrawable$IInvalidateDelegate;)V

    new-instance p0, Landroid/graphics/Rect;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1, p3, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method public beforeBitmapDrawing(Landroid/graphics/Canvas;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/oplus/icons/AbstractCoverDrawable;->beforeBitmapDrawing(Landroid/graphics/Canvas;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    move-result p1

    iput p1, p0, Lcom/android/launcher/download/DownloadProgressPreviewDrawable;->mCanvasSavePoint:I

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/download/DownloadProgressPreviewDrawable;->mDownloadProgressDrawable:Lcom/android/launcher/download/DownloadProgressDrawable;

    invoke-virtual {v0, p1}, Lcom/android/launcher/download/DownloadProgressDrawable;->draw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/android/launcher/download/DownloadProgressPreviewDrawable;->mCanvasSavePoint:I

    if-eqz v0, :cond_f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/launcher/download/DownloadProgressPreviewDrawable;->mCanvasSavePoint:I

    :cond_f
    return-void
.end method

.method public getOpacity()I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/download/DownloadProgressPreviewDrawable;->mDownloadProgressDrawable:Lcom/android/launcher/download/DownloadProgressDrawable;

    invoke-virtual {p0}, Lcom/android/launcher/download/DownloadProgressDrawable;->getOpacity()I

    move-result p0

    return p0
.end method

.method public invalidateSelf()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/download/DownloadProgressPreviewDrawable;->mDownloadProgressDrawable:Lcom/android/launcher/download/DownloadProgressDrawable;

    invoke-virtual {p0}, Lcom/android/launcher/download/DownloadProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/android/launcher/download/DownloadProgressPreviewDrawable;->mDownloadProgressDrawable:Lcom/android/launcher/download/DownloadProgressDrawable;

    invoke-virtual {p0, p1}, Lcom/android/launcher/download/DownloadProgressDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onInstallStateOrProgressChange(IZ)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher/download/DownloadProgressPreviewDrawable;->mDownloadProgressDrawable:Lcom/android/launcher/download/DownloadProgressDrawable;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/download/DownloadProgressDrawable;->onInstallStateOrProgressChange(IZ)V

    return-void
.end method

.method public setAlpha(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/download/DownloadProgressPreviewDrawable;->mDownloadProgressDrawable:Lcom/android/launcher/download/DownloadProgressDrawable;

    invoke-virtual {p0, p1}, Lcom/android/launcher/download/DownloadProgressDrawable;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/download/DownloadProgressPreviewDrawable;->mDownloadProgressDrawable:Lcom/android/launcher/download/DownloadProgressDrawable;

    invoke-virtual {p0, p1}, Lcom/android/launcher/download/DownloadProgressDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method
