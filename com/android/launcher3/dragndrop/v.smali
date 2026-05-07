.class public final synthetic Lcom/android/launcher3/dragndrop/v;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/icons/BitmapRenderer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:F

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(FLandroid/view/View;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/dragndrop/v;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/dragndrop/v;->b:F

    iput-object p2, p0, Lcom/android/launcher3/dragndrop/v;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/graphics/DragPreviewProvider;F)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/dragndrop/v;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/v;->c:Ljava/lang/Object;

    iput p2, p0, Lcom/android/launcher3/dragndrop/v;->b:F

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .registers 3

    iget v0, p0, Lcom/android/launcher3/dragndrop/v;->a:I

    packed-switch v0, :pswitch_data_1a

    goto :goto_10

    :pswitch_6  #0x0
    iget v0, p0, Lcom/android/launcher3/dragndrop/v;->b:F

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/v;->c:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/dragndrop/LivePreviewWidgetCell;->a(FLandroid/view/View;Landroid/graphics/Canvas;)V

    return-void

    :goto_10
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/v;->c:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/graphics/DragPreviewProvider;

    iget p0, p0, Lcom/android/launcher3/dragndrop/v;->b:F

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/graphics/DragPreviewProvider;->a(Lcom/android/launcher3/graphics/DragPreviewProvider;FLandroid/graphics/Canvas;)V

    return-void

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
