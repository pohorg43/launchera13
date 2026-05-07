.class public final synthetic Landroidx/core/view/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/view/MenuHostHelper;Landroidx/core/view/MenuProvider;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Landroidx/core/view/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/b;->b:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/core/view/b;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/lifecycle/LifecycleController;Lq3/i1;)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Landroidx/core/view/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/b;->b:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/core/view/b;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/CallbackController;Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x2

    iput v0, p0, Landroidx/core/view/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/b;->b:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/core/view/b;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .registers 4

    iget v0, p0, Landroidx/core/view/b;->a:I

    packed-switch v0, :pswitch_data_28

    goto :goto_1e

    :pswitch_6  #0x1
    iget-object v0, p0, Landroidx/core/view/b;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/LifecycleController;

    iget-object p0, p0, Landroidx/core/view/b;->c:Ljava/lang/Object;

    check-cast p0, Lq3/i1;

    invoke-static {v0, p0, p1, p2}, Landroidx/lifecycle/LifecycleController;->a(Landroidx/lifecycle/LifecycleController;Lq3/i1;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V

    return-void

    :pswitch_12  #0x0
    iget-object v0, p0, Landroidx/core/view/b;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/core/view/MenuHostHelper;

    iget-object p0, p0, Landroidx/core/view/b;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/core/view/MenuProvider;

    invoke-static {v0, p0, p1, p2}, Landroidx/core/view/MenuHostHelper;->b(Landroidx/core/view/MenuHostHelper;Landroidx/core/view/MenuProvider;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V

    return-void

    :goto_1e
    iget-object v0, p0, Landroidx/core/view/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/policy/CallbackController;

    iget-object p0, p0, Landroidx/core/view/b;->c:Ljava/lang/Object;

    invoke-static {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/policy/CallbackController;->a(Lcom/android/systemui/statusbar/policy/CallbackController;Ljava/lang/Object;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V

    return-void

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_12  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
