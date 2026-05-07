.class final Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawViewToCanvas$2;
.super Ld3/i;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Ld3/e;
    c = "com.android.launcher.wallpaper.LauncherBitmapManager$drawViewToCanvas$2"
    f = "LauncherBitmapManager.kt"
    l = {
        0x238
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/wallpaper/LauncherBitmapManager;->drawViewToCanvas(Landroid/graphics/Canvas;Landroid/view/View;Landroid/graphics/Paint;Lcom/android/launcher3/Launcher;Lb3/d;)Ljava/lang/Object;
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
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $canvas:Landroid/graphics/Canvas;

.field public final synthetic $launcher:Lcom/android/launcher3/Launcher;

.field public final synthetic $paint:Landroid/graphics/Paint;

.field public final synthetic $view:Landroid/view/View;

.field public label:I

.field public final synthetic this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Landroid/view/View;Lcom/android/launcher3/Launcher;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lb3/d;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/wallpaper/LauncherBitmapManager;",
            "Landroid/view/View;",
            "Lcom/android/launcher3/Launcher;",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "Lb3/d<",
            "-",
            "Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawViewToCanvas$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawViewToCanvas$2;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    iput-object p2, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawViewToCanvas$2;->$view:Landroid/view/View;

    iput-object p3, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawViewToCanvas$2;->$launcher:Lcom/android/launcher3/Launcher;

    iput-object p4, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawViewToCanvas$2;->$canvas:Landroid/graphics/Canvas;

    iput-object p5, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawViewToCanvas$2;->$paint:Landroid/graphics/Paint;

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

    new-instance p1, Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawViewToCanvas$2;

    iget-object v1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawViewToCanvas$2;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    iget-object v2, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawViewToCanvas$2;->$view:Landroid/view/View;

    iget-object v3, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawViewToCanvas$2;->$launcher:Lcom/android/launcher3/Launcher;

    iget-object v4, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawViewToCanvas$2;->$canvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawViewToCanvas$2;->$paint:Landroid/graphics/Paint;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawViewToCanvas$2;-><init>(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Landroid/view/View;Lcom/android/launcher3/Launcher;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lb3/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lq3/f0;

    check-cast p2, Lb3/d;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawViewToCanvas$2;->invoke(Lq3/f0;Lb3/d;)Ljava/lang/Object;

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
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawViewToCanvas$2;->create(Ljava/lang/Object;Lb3/d;)Lb3/d;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawViewToCanvas$2;

    sget-object p1, Ly2/p;->a:Ly2/p;

    invoke-virtual {p0, p1}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawViewToCanvas$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    sget-object v0, Lc3/a;->a:Lc3/a;

    iget v1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawViewToCanvas$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_15

    if-ne v1, v2, :cond_d

    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    goto :goto_4e

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawViewToCanvas$2;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    iget-object v1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawViewToCanvas$2;->$view:Landroid/view/View;

    iget-object v3, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawViewToCanvas$2;->$launcher:Lcom/android/launcher3/Launcher;

    invoke-static {p1, v1, v3}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->access$getLocationOfCellLayoutInFirstScreen(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Landroid/view/View;Lcom/android/launcher3/Launcher;)[I

    move-result-object v7

    const/4 p1, 0x0

    aget p1, v7, p1

    if-nez p1, :cond_35

    aget p1, v7, v2

    if-nez p1, :cond_35

    const-string p0, "LauncherBitmapManager"

    const-string p1, "drawViewToCanvas view not in right location"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_35
    iget-object p1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawViewToCanvas$2;->$view:Landroid/view/View;

    instance-of v1, p1, Lcom/android/launcher3/OplusCellLayout;

    if-eqz v1, :cond_4e

    iget-object v4, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawViewToCanvas$2;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    move-object v5, p1

    check-cast v5, Lcom/android/launcher3/OplusCellLayout;

    iget-object v6, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawViewToCanvas$2;->$canvas:Landroid/graphics/Canvas;

    iget-object v8, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawViewToCanvas$2;->$paint:Landroid/graphics/Paint;

    iput v2, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$drawViewToCanvas$2;->label:I

    move-object v9, p0

    invoke-static/range {v4 .. v9}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->access$drawCellLayoutToCanvas(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Lcom/android/launcher3/OplusCellLayout;Landroid/graphics/Canvas;[ILandroid/graphics/Paint;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4e

    return-object v0

    :cond_4e
    :goto_4e
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method
