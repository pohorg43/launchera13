.class public final synthetic Lcom/android/launcher3/model/c1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/content/pm/ShortcutInfo;Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;Ljava/util/ArrayList;)V
    .registers 6

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/model/c1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/c1;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/model/c1;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher3/model/c1;->d:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/launcher3/model/c1;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/transition/DefaultTransitionHandler;Landroid/window/TransitionInfo$Change;Landroid/view/animation/Animation;Landroid/view/SurfaceControl$Transaction;)V
    .registers 6

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/model/c1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/c1;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/model/c1;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher3/model/c1;->d:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/launcher3/model/c1;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 5

    iget v0, p0, Lcom/android/launcher3/model/c1;->a:I

    packed-switch v0, :pswitch_data_32

    goto :goto_1c

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/launcher3/model/c1;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    iget-object v1, p0, Lcom/android/launcher3/model/c1;->c:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher3/model/c1;->d:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher3/LauncherAppState;

    iget-object p0, p0, Lcom/android/launcher3/model/c1;->e:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    check-cast p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/launcher3/model/ShortcutsChangedTask;->m(Landroid/content/pm/ShortcutInfo;Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;Ljava/util/ArrayList;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    return-void

    :goto_1c
    iget-object v0, p0, Lcom/android/launcher3/model/c1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;

    iget-object v1, p0, Lcom/android/launcher3/model/c1;->c:Ljava/lang/Object;

    check-cast v1, Landroid/window/TransitionInfo$Change;

    iget-object v2, p0, Lcom/android/launcher3/model/c1;->d:Ljava/lang/Object;

    check-cast v2, Landroid/view/animation/Animation;

    iget-object p0, p0, Lcom/android/launcher3/model/c1;->e:Ljava/lang/Object;

    check-cast p0, Landroid/view/SurfaceControl$Transaction;

    check-cast p1, Landroid/view/SurfaceControl$Transaction;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->a(Lcom/android/wm/shell/transition/DefaultTransitionHandler;Landroid/window/TransitionInfo$Change;Landroid/view/animation/Animation;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    return-void

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
