.class public final synthetic Lcom/android/quickstep/c0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:J

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Intent;JLcom/android/quickstep/RecentsAnimationCallbacks;)V
    .registers 6

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quickstep/c0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/c0;->b:Ljava/lang/Object;

    iput-wide p2, p0, Lcom/android/quickstep/c0;->c:J

    iput-object p4, p0, Lcom/android/quickstep/c0;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/PipTaskOrganizer;Landroid/graphics/Rect;J)V
    .registers 6

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/quickstep/c0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/c0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/quickstep/c0;->d:Ljava/lang/Object;

    iput-wide p3, p0, Lcom/android/quickstep/c0;->c:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget v0, p0, Lcom/android/quickstep/c0;->a:I

    packed-switch v0, :pswitch_data_22

    goto :goto_14

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/quickstep/c0;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    iget-wide v1, p0, Lcom/android/quickstep/c0;->c:J

    iget-object p0, p0, Lcom/android/quickstep/c0;->d:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/RecentsAnimationCallbacks;

    invoke-static {v0, v1, v2, p0}, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->a(Landroid/content/Intent;JLcom/android/quickstep/RecentsAnimationCallbacks;)V

    return-void

    :goto_14
    iget-object v0, p0, Lcom/android/quickstep/c0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;

    iget-object v1, p0, Lcom/android/quickstep/c0;->d:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Rect;

    iget-wide v2, p0, Lcom/android/quickstep/c0;->c:J

    invoke-static {v0, v1, v2, v3}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->e(Lcom/android/wm/shell/pip/PipTaskOrganizer;Landroid/graphics/Rect;J)V

    return-void

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
