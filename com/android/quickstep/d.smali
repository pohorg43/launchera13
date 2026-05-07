.class public final synthetic Lcom/android/quickstep/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:I

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/AbsSwipeUpHandler;IZ)V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quickstep/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/d;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/quickstep/d;->c:I

    iput-boolean p3, p0, Lcom/android/quickstep/d;->d:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/TouchInteractionService$TISBinder;IZ)V
    .registers 5

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/quickstep/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/d;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/quickstep/d;->c:I

    iput-boolean p3, p0, Lcom/android/quickstep/d;->d:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenController;IZ)V
    .registers 5

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/quickstep/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/d;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/quickstep/d;->c:I

    iput-boolean p3, p0, Lcom/android/quickstep/d;->d:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget v0, p0, Lcom/android/quickstep/d;->a:I

    packed-switch v0, :pswitch_data_2a

    goto :goto_1e

    :pswitch_6  #0x1
    iget-object v0, p0, Lcom/android/quickstep/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/TouchInteractionService$TISBinder;

    iget v1, p0, Lcom/android/quickstep/d;->c:I

    iget-boolean p0, p0, Lcom/android/quickstep/d;->d:Z

    invoke-static {v0, v1, p0}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->g(Lcom/android/quickstep/TouchInteractionService$TISBinder;IZ)V

    return-void

    :pswitch_12  #0x0
    iget-object v0, p0, Lcom/android/quickstep/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/AbsSwipeUpHandler;

    iget v1, p0, Lcom/android/quickstep/d;->c:I

    iget-boolean p0, p0, Lcom/android/quickstep/d;->d:Z

    invoke-static {v0, v1, p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->M(Lcom/android/quickstep/AbsSwipeUpHandler;IZ)V

    return-void

    :goto_1e
    iget-object v0, p0, Lcom/android/quickstep/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget v1, p0, Lcom/android/quickstep/d;->c:I

    iget-boolean p0, p0, Lcom/android/quickstep/d;->d:Z

    invoke-static {v0, v1, p0}, Lcom/oplus/splitscreen/StackDividerService;->d(Lcom/android/wm/shell/splitscreen/SplitScreenController;IZ)V

    return-void

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_12  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
