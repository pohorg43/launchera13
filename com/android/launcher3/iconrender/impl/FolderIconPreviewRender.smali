.class public final Lcom/android/launcher3/iconrender/impl/FolderIconPreviewRender;
.super Lcom/android/launcher3/iconrender/AbstractIconRenderer;
.source ""

# interfaces
.implements Lcom/android/launcher3/iconrender/impl/IFolderIconUpdateExport;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/iconrender/AbstractIconRenderer<",
        "Lcom/android/launcher3/iconrender/IconRenderParams;",
        ">;",
        "Lcom/android/launcher3/iconrender/impl/IFolderIconUpdateExport;"
    }
.end annotation


# instance fields
.field private canvasSavePoint:I

.field private folderPreviewDrawable:Lcom/oplus/icons/OplusFastBitmapDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/iconrender/RenderManager;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/iconrender/AbstractIconRenderer;-><init>(Landroid/content/Context;Lcom/android/launcher3/iconrender/RenderManager;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/launcher3/iconrender/impl/FolderIconPreviewRender;->canvasSavePoint:I

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-class p1, Lcom/android/launcher3/iconrender/impl/IFolderIconUpdateExport;

    invoke-virtual {p2, p1, p0}, Lcom/android/launcher3/iconrender/RenderManager;->registerExport(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public acceptDraw(Lcom/android/launcher3/iconrender/RenderManager;Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/iconrender/IconRenderParams;)Z
    .registers 4

    iget-object p0, p0, Lcom/android/launcher3/iconrender/impl/FolderIconPreviewRender;->folderPreviewDrawable:Lcom/oplus/icons/OplusFastBitmapDrawable;

    if-eqz p0, :cond_17

    const/4 p0, 0x0

    if-nez p1, :cond_8

    goto :goto_13

    :cond_8
    invoke-virtual {p1}, Lcom/android/launcher3/iconrender/RenderManager;->getHostView()Lcom/android/launcher3/BubbleTextView;

    move-result-object p1

    if-nez p1, :cond_f

    goto :goto_13

    :cond_f
    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :goto_13
    if-eqz p0, :cond_17

    const/4 p0, 0x1

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    return p0
.end method

.method public bridge synthetic acceptDraw(Lcom/android/launcher3/iconrender/RenderManager;Lcom/android/launcher3/BubbleTextView;Ljava/lang/Object;)Z
    .registers 4

    check-cast p3, Lcom/android/launcher3/iconrender/IconRenderParams;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/iconrender/impl/FolderIconPreviewRender;->acceptDraw(Lcom/android/launcher3/iconrender/RenderManager;Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/iconrender/IconRenderParams;)Z

    move-result p0

    return p0
.end method

.method public renderAfterIconDrawn(Landroid/graphics/Canvas;Lcom/android/launcher3/iconrender/RenderManager;)V
    .registers 4

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/launcher3/iconrender/impl/FolderIconPreviewRender;->folderPreviewDrawable:Lcom/oplus/icons/OplusFastBitmapDrawable;

    if-nez p2, :cond_f

    goto :goto_12

    :cond_f
    invoke-virtual {p2, p1}, Lcom/oplus/icons/OplusFastBitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    :goto_12
    iget p0, p0, Lcom/android/launcher3/iconrender/impl/FolderIconPreviewRender;->canvasSavePoint:I

    if-lez p0, :cond_19

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_19
    return-void
.end method

.method public renderAsBitmapCover()Landroid/graphics/drawable/Drawable;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public renderBeforeIconDrawn(Landroid/graphics/Canvas;Lcom/android/launcher3/iconrender/RenderManager;)V
    .registers 4

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/iconrender/impl/FolderIconPreviewRender;->canvasSavePoint:I

    invoke-virtual {p2}, Lcom/android/launcher3/iconrender/RenderManager;->getHostView()Lcom/android/launcher3/BubbleTextView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/iconrender/impl/FolderIconPreviewRender;->folderPreviewDrawable:Lcom/oplus/icons/OplusFastBitmapDrawable;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getAlpha()I

    move-result p0

    rsub-int p0, p0, 0xff

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public setPreviewDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    if-nez p1, :cond_b

    const/16 p1, 0xff

    invoke-virtual {p0, p1}, Lcom/android/launcher3/iconrender/impl/FolderIconPreviewRender;->updatePreviewAlpha(I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/iconrender/impl/FolderIconPreviewRender;->folderPreviewDrawable:Lcom/oplus/icons/OplusFastBitmapDrawable;

    goto :goto_13

    :cond_b
    instance-of v0, p1, Lcom/oplus/icons/OplusFastBitmapDrawable;

    if-eqz v0, :cond_13

    check-cast p1, Lcom/oplus/icons/OplusFastBitmapDrawable;

    iput-object p1, p0, Lcom/android/launcher3/iconrender/impl/FolderIconPreviewRender;->folderPreviewDrawable:Lcom/oplus/icons/OplusFastBitmapDrawable;

    :cond_13
    :goto_13
    iget-object p1, p0, Lcom/android/launcher3/iconrender/impl/FolderIconPreviewRender;->folderPreviewDrawable:Lcom/oplus/icons/OplusFastBitmapDrawable;

    if-nez p1, :cond_18

    goto :goto_29

    :cond_18
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object p0, p0, Lcom/android/launcher3/iconrender/AbstractRenderer;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    invoke-virtual {p0}, Lcom/android/launcher3/iconrender/RenderManager;->getHostView()Lcom/android/launcher3/BubbleTextView;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->getIconBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :goto_29
    return-void
.end method

.method public updatePreviewAlpha(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/iconrender/impl/FolderIconPreviewRender;->folderPreviewDrawable:Lcom/oplus/icons/OplusFastBitmapDrawable;

    if-nez v0, :cond_5

    goto :goto_8

    :cond_5
    invoke-virtual {v0, p1}, Lcom/oplus/icons/OplusFastBitmapDrawable;->setAlpha(I)V

    :goto_8
    iget-object p0, p0, Lcom/android/launcher3/iconrender/impl/FolderIconPreviewRender;->folderPreviewDrawable:Lcom/oplus/icons/OplusFastBitmapDrawable;

    if-nez p0, :cond_e

    const/4 p0, 0x0

    goto :goto_12

    :cond_e
    invoke-virtual {p0}, Lcom/oplus/icons/OplusFastBitmapDrawable;->getBadge()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :goto_12
    if-nez p0, :cond_15

    goto :goto_18

    :cond_15
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_18
    return-void
.end method
