.class final Lcom/android/launcher/wallpaper/LauncherBitmapManager$makeLauncherRootView$2;
.super Ld3/i;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Ld3/e;
    c = "com.android.launcher.wallpaper.LauncherBitmapManager$makeLauncherRootView$2"
    f = "LauncherBitmapManager.kt"
    l = {
        0x20a,
        0x20f
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/wallpaper/LauncherBitmapManager;->makeLauncherRootView(Lcom/android/launcher3/Launcher;Landroid/graphics/Canvas;Lb3/d;)Ljava/lang/Object;
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

.field public I$0:I

.field public I$1:I

.field public I$2:I

.field public L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher/wallpaper/LauncherBitmapManager;Landroid/graphics/Canvas;Lb3/d;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/Launcher;",
            "Lcom/android/launcher/wallpaper/LauncherBitmapManager;",
            "Landroid/graphics/Canvas;",
            "Lb3/d<",
            "-",
            "Lcom/android/launcher/wallpaper/LauncherBitmapManager$makeLauncherRootView$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$makeLauncherRootView$2;->$launcher:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$makeLauncherRootView$2;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    iput-object p3, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$makeLauncherRootView$2;->$canvas:Landroid/graphics/Canvas;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ld3/i;-><init>(ILb3/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lb3/d;)Lb3/d;
    .registers 5
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

    new-instance p1, Lcom/android/launcher/wallpaper/LauncherBitmapManager$makeLauncherRootView$2;

    iget-object v0, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$makeLauncherRootView$2;->$launcher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$makeLauncherRootView$2;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    iget-object p0, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$makeLauncherRootView$2;->$canvas:Landroid/graphics/Canvas;

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$makeLauncherRootView$2;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher/wallpaper/LauncherBitmapManager;Landroid/graphics/Canvas;Lb3/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lq3/f0;

    check-cast p2, Lb3/d;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$makeLauncherRootView$2;->invoke(Lq3/f0;Lb3/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$makeLauncherRootView$2;->create(Ljava/lang/Object;Lb3/d;)Lb3/d;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$makeLauncherRootView$2;

    sget-object p1, Ly2/p;->a:Ly2/p;

    invoke-virtual {p0, p1}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$makeLauncherRootView$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 19

    move-object/from16 v0, p0

    sget-object v1, Lc3/a;->a:Lc3/a;

    iget v2, v0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$makeLauncherRootView$2;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_3b

    if-eq v2, v6, :cond_29

    if-ne v2, v4, :cond_21

    iget v2, v0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$makeLauncherRootView$2;->I$2:I

    iget v7, v0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$makeLauncherRootView$2;->I$1:I

    iget v8, v0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$makeLauncherRootView$2;->I$0:I

    iget-object v9, v0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$makeLauncherRootView$2;->L$0:Ljava/lang/Object;

    check-cast v9, [Lcom/android/launcher3/CellLayout;

    invoke-static/range {p1 .. p1}, Lq/d;->p(Ljava/lang/Object;)V

    move-object/from16 v10, p1

    goto/16 :goto_bf

    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    iget v2, v0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$makeLauncherRootView$2;->I$2:I

    iget v7, v0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$makeLauncherRootView$2;->I$1:I

    iget v8, v0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$makeLauncherRootView$2;->I$0:I

    iget-object v9, v0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$makeLauncherRootView$2;->L$1:Ljava/lang/Object;

    check-cast v9, Lcom/android/launcher3/CellLayout;

    iget-object v10, v0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$makeLauncherRootView$2;->L$0:Ljava/lang/Object;

    check-cast v10, [Lcom/android/launcher3/CellLayout;

    invoke-static/range {p1 .. p1}, Lq/d;->p(Ljava/lang/Object;)V

    goto :goto_a1

    :cond_3b
    invoke-static/range {p1 .. p1}, Lq/d;->p(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$makeLauncherRootView$2;->$launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string/jumbo v7, "makeLauncherRootView, isloading ? = "

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "LauncherBitmapManager"

    invoke-static {v7, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$makeLauncherRootView$2;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    iget-object v7, v0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$makeLauncherRootView$2;->$launcher:Lcom/android/launcher3/Launcher;

    invoke-static {v2, v7}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->access$getPreviewCells(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Lcom/android/launcher3/Launcher;)[Lcom/android/launcher3/CellLayout;

    move-result-object v2

    array-length v7, v2

    move-object v10, v2

    move v8, v5

    move v2, v7

    move v7, v8

    :cond_61
    :goto_61
    if-ge v7, v2, :cond_c8

    aget-object v9, v10, v7

    add-int/lit8 v7, v7, 0x1

    if-eqz v9, :cond_61

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    if-lez v11, :cond_61

    invoke-virtual {v9, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    if-nez v11, :cond_76

    goto :goto_a1

    :cond_76
    invoke-virtual {v11}, Landroid/view/View;->getAlpha()F

    move-result v12

    const/high16 v13, 0x3f800000  # 1.0f

    cmpg-float v12, v12, v13

    if-nez v12, :cond_82

    move v12, v6

    goto :goto_83

    :cond_82
    move v12, v5

    :goto_83
    if-nez v12, :cond_a1

    sget-object v12, Lq3/q0;->a:Lq3/b0;

    sget-object v12, Lv3/q;->a:Lq3/r1;

    new-instance v13, Lcom/android/launcher/wallpaper/LauncherBitmapManager$makeLauncherRootView$2$1$1;

    invoke-direct {v13, v11, v3}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$makeLauncherRootView$2$1$1;-><init>(Landroid/view/View;Lb3/d;)V

    iput-object v10, v0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$makeLauncherRootView$2;->L$0:Ljava/lang/Object;

    iput-object v9, v0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$makeLauncherRootView$2;->L$1:Ljava/lang/Object;

    iput v8, v0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$makeLauncherRootView$2;->I$0:I

    iput v7, v0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$makeLauncherRootView$2;->I$1:I

    iput v2, v0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$makeLauncherRootView$2;->I$2:I

    iput v6, v0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$makeLauncherRootView$2;->label:I

    invoke-static {v12, v13, v0}, Lq3/g;->g(Lb3/f;Lkotlin/jvm/functions/Function2;Lb3/d;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v1, :cond_a1

    return-object v1

    :cond_a1
    :goto_a1
    move-object v13, v9

    move-object v9, v10

    iget-object v11, v0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$makeLauncherRootView$2;->this$0:Lcom/android/launcher/wallpaper/LauncherBitmapManager;

    iget-object v12, v0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$makeLauncherRootView$2;->$canvas:Landroid/graphics/Canvas;

    const/4 v14, 0x0

    iget-object v15, v0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$makeLauncherRootView$2;->$launcher:Lcom/android/launcher3/Launcher;

    iput-object v9, v0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$makeLauncherRootView$2;->L$0:Ljava/lang/Object;

    iput-object v3, v0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$makeLauncherRootView$2;->L$1:Ljava/lang/Object;

    iput v8, v0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$makeLauncherRootView$2;->I$0:I

    iput v7, v0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$makeLauncherRootView$2;->I$1:I

    iput v2, v0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$makeLauncherRootView$2;->I$2:I

    iput v4, v0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$makeLauncherRootView$2;->label:I

    move-object/from16 v16, v0

    invoke-static/range {v11 .. v16}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->access$drawViewToCanvas(Lcom/android/launcher/wallpaper/LauncherBitmapManager;Landroid/graphics/Canvas;Landroid/view/View;Landroid/graphics/Paint;Lcom/android/launcher3/Launcher;Lb3/d;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v1, :cond_bf

    return-object v1

    :cond_bf
    :goto_bf
    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    or-int/2addr v8, v10

    move-object v10, v9

    goto :goto_61

    :cond_c8
    if-eqz v8, :cond_cb

    move v5, v6

    :cond_cb
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
