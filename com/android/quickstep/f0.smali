.class public final synthetic Lcom/android/quickstep/f0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/OplusBaseTouchInteractionService;J)V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quickstep/f0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/f0;->b:Ljava/lang/Object;

    iput-wide p2, p0, Lcom/android/quickstep/f0;->c:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/RecentsAnimationController;J)V
    .registers 5

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/quickstep/f0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/f0;->b:Ljava/lang/Object;

    iput-wide p2, p0, Lcom/android/quickstep/f0;->c:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget v0, p0, Lcom/android/quickstep/f0;->a:I

    packed-switch v0, :pswitch_data_1a

    goto :goto_10

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/quickstep/f0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/OplusBaseTouchInteractionService;

    iget-wide v1, p0, Lcom/android/quickstep/f0;->c:J

    invoke-static {v0, v1, v2}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->h(Lcom/android/quickstep/OplusBaseTouchInteractionService;J)V

    return-void

    :goto_10
    iget-object v0, p0, Lcom/android/quickstep/f0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/RecentsAnimationController;

    iget-wide v1, p0, Lcom/android/quickstep/f0;->c:J

    invoke-static {v0, v1, v2}, Lcom/android/quickstep/RecentsAnimationController;->f(Lcom/android/quickstep/RecentsAnimationController;J)V

    return-void

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
