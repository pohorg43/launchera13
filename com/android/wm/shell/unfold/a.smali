.class public final synthetic Lcom/android/wm/shell/unfold/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;

.field public final synthetic b:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;F)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/unfold/a;->a:Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;

    iput p2, p0, Lcom/android/wm/shell/unfold/a;->b:F

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/unfold/a;->a:Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;

    iget p0, p0, Lcom/android/wm/shell/unfold/a;->b:F

    check-cast p1, Landroid/window/TransitionInfo$Change;

    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->a(Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;FLandroid/window/TransitionInfo$Change;)V

    return-void
.end method
