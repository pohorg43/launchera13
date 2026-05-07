.class public Lcom/android/launcher3/folder/PreviewItemDrawingParams;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public anim:Lcom/android/launcher3/folder/FolderPreviewItemAnim;

.field public dotInfo:Lcom/android/launcher3/dot/DotInfo;

.field public drawable:Landroid/graphics/drawable/Drawable;

.field public hidden:Z

.field public index:F

.field public item:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

.field public mForceHideDot:Z

.field public scale:F

.field public skipGetDrawable:Z

.field public transX:F

.field public transY:F


# direct methods
.method public constructor <init>(FFF)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transX:F

    iput p2, p0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transY:F

    iput p3, p0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->scale:F

    return-void
.end method


# virtual methods
.method public update(FFF)V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->anim:Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    if-eqz v0, :cond_21

    iget-object v1, v0, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->finalState:[F

    const/4 v2, 0x1

    aget v2, v1, v2

    cmpl-float v2, v2, p1

    if-eqz v2, :cond_20

    const/4 v2, 0x2

    aget v2, v1, v2

    cmpl-float v2, v2, p2

    if-eqz v2, :cond_20

    const/4 v2, 0x0

    aget v1, v1, v2

    cmpl-float v1, v1, p3

    if-nez v1, :cond_1c

    goto :goto_20

    :cond_1c
    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->cancel()V

    goto :goto_21

    :cond_20
    :goto_20
    return-void

    :cond_21
    :goto_21
    iput p1, p0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transX:F

    iput p2, p0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transY:F

    iput p3, p0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->scale:F

    return-void
.end method
