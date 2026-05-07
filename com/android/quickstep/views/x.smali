.class public final synthetic Lcom/android/quickstep/views/x;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/views/RecentsView$15;I)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quickstep/views/x;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/x;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/quickstep/views/x;->c:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/views/RecentsView;I)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/quickstep/views/x;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/x;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/quickstep/views/x;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/quickstep/views/x;->a:I

    packed-switch v0, :pswitch_data_1a

    goto :goto_10

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/quickstep/views/x;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/views/RecentsView$15;

    iget p0, p0, Lcom/android/quickstep/views/x;->c:I

    invoke-static {v0, p0}, Lcom/android/quickstep/views/RecentsView$15;->b(Lcom/android/quickstep/views/RecentsView$15;I)V

    return-void

    :goto_10
    iget-object v0, p0, Lcom/android/quickstep/views/x;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/views/RecentsView;

    iget p0, p0, Lcom/android/quickstep/views/x;->c:I

    invoke-static {v0, p0}, Lcom/android/quickstep/views/RecentsView;->v(Lcom/android/quickstep/views/RecentsView;I)V

    return-void

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
