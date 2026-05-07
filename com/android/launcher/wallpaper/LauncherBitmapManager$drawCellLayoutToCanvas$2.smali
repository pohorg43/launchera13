.class final Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawCellLayoutToCanvas$2;
.super Ld3/i;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Ld3/e;
    c = "com.android.launcher.wallpaper.LauncherBitmapManager$drawCellLayoutToCanvas$2"
    f = "LauncherBitmapManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/wallpaper/LauncherBitmapManager;->drawCellLayoutToCanvas(Lcom/android/launcher3/OplusCellLayout;Landroid/graphics/Canvas;[ILandroid/graphics/Paint;Lb3/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ld3/i;",
        "Lkotlin/jvm/functions/Function2<",
        "Lq3/f0;",
        "Lb3/d<",
        "-",
        "Ly2/p;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $canvas:Landroid/graphics/Canvas;

.field public final synthetic $paint:Landroid/graphics/Paint;

.field public final synthetic $pos:[I

.field public final synthetic $view:Lcom/android/launcher3/OplusCellLayout;

.field public label:I

.field public final synthetic this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/OplusCellLayout;[ILcom/android/launcher/wallpaper/LauncherBitmapManager;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lb3/d;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/OplusCellLayout;",
            "[I",
            "Lcom/android/launcher/wallpaper/LauncherBitmapManager;",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "Lb3/d<",
            "-",
            "Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawCellLayoutToCanvas$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawCellLayoutToCanvas$2;->$view:Lcom/android/launcher3/OplusCellLayout;

    iput-object p2, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawCellLayoutToCanvas$2;->$pos:[I

    iput-object p3, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawCellLayoutToCanvas$2;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    iput-object p4, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawCellLayoutToCanvas$2;->$canvas:Landroid/graphics/Canvas;

    iput-object p5, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawCellLayoutToCanvas$2;->$paint:Landroid/graphics/Paint;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Ld3/i;-><init>(ILb3/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lb3/d;)Lb3/d;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lb3/d<",
            "*>;)",
            "Lb3/d<",
            "Ly2/p;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawCellLayoutToCanvas$2;

    iget-object v1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawCellLayoutToCanvas$2;->$view:Lcom/android/launcher3/OplusCellLayout;

    iget-object v2, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawCellLayoutToCanvas$2;->$pos:[I

    iget-object v3, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawCellLayoutToCanvas$2;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    iget-object v4, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawCellLayoutToCanvas$2;->$canvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawCellLayoutToCanvas$2;->$paint:Landroid/graphics/Paint;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawCellLayoutToCanvas$2;-><init>(Lcom/android/launcher3/OplusCellLayout;[ILcom/android/launcher/wallpaper/LauncherBitmapManager;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lb3/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lq3/f0;

    check-cast p2, Lb3/d;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawCellLayoutToCanvas$2;->invoke(Lq3/f0;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lq3/f0;Lb3/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/f0;",
            "Lb3/d<",
            "-",
            "Ly2/p;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawCellLayoutToCanvas$2;->create(Ljava/lang/Object;Lb3/d;)Lb3/d;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawCellLayoutToCanvas$2;

    sget-object p1, Ly2/p;->a:Ly2/p;

    invoke-virtual {p0, p1}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawCellLayoutToCanvas$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    iget v0, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawCellLayoutToCanvas$2;->label:I

    if-nez v0, :cond_6c

    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawCellLayoutToCanvas$2;->$view:Lcom/android/launcher3/OplusCellLayout;

    iget-object v0, p1, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    iget-object p1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawCellLayoutToCanvas$2;->$pos:[I

    const/4 v2, 0x0

    aget p1, p1, v2

    aput p1, v1, v2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-gtz p1, :cond_21

    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0

    :cond_21
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-lez p1, :cond_69

    move v3, v2

    :goto_28
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_31

    goto :goto_64

    :cond_31
    instance-of v5, v3, Lcom/android/launcher3/card/LauncherCardView;

    const/4 v6, 0x1

    if-eqz v5, :cond_3e

    move-object v5, v3

    check-cast v5, Lcom/android/launcher3/card/LauncherCardView;

    invoke-interface {v5, v6}, Lcom/android/common/util/IViewToBitmap;->getViewScreenshot(Z)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_44

    :cond_3e
    iget-object v5, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawCellLayoutToCanvas$2;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    invoke-static {v5, v3}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->access$getSoftBitmapOfView(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v5

    :goto_44
    if-eqz v5, :cond_64

    iget-object v7, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawCellLayoutToCanvas$2;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    iget-object v8, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawCellLayoutToCanvas$2;->$pos:[I

    aget v8, v8, v2

    aget v6, v1, v6

    invoke-static {v7, v3, v8, v6}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->access$getViewBoundsInCanvas(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Landroid/view/View;II)Landroid/graphics/Rect;

    move-result-object v3

    iget-object v6, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawCellLayoutToCanvas$2;->$canvas:Landroid/graphics/Canvas;

    iget v7, v3, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget-object v8, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawCellLayoutToCanvas$2;->$paint:Landroid/graphics/Paint;

    invoke-virtual {v6, v5, v7, v3, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v3, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawCellLayoutToCanvas$2;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    invoke-static {v3, v5}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->access$recycleBitmap(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Landroid/graphics/Bitmap;)V

    :cond_64
    :goto_64
    if-lt v4, p1, :cond_67

    goto :goto_69

    :cond_67
    move v3, v4

    goto :goto_28

    :cond_69
    :goto_69
    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0

    :cond_6c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
