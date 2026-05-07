.class public final synthetic Lcom/android/wm/shell/transition/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Landroid/window/TransitionFilter;

.field public final synthetic b:Landroid/window/RemoteTransition;


# direct methods
.method public synthetic constructor <init>(Landroid/window/TransitionFilter;Landroid/window/RemoteTransition;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/transition/o;->a:Landroid/window/TransitionFilter;

    iput-object p2, p0, Lcom/android/wm/shell/transition/o;->b:Landroid/window/RemoteTransition;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/transition/o;->a:Landroid/window/TransitionFilter;

    iget-object p0, p0, Lcom/android/wm/shell/transition/o;->b:Landroid/window/RemoteTransition;

    check-cast p1, Lcom/android/wm/shell/transition/Transitions;

    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/transition/Transitions$IShellTransitionsImpl;->d(Landroid/window/TransitionFilter;Landroid/window/RemoteTransition;Lcom/android/wm/shell/transition/Transitions;)V

    return-void
.end method
