.class public final synthetic Lcom/android/quickstep/z;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Lcom/android/quickstep/OplusBaseRecentsModel;


# direct methods
.method public synthetic constructor <init>(ILcom/android/quickstep/OplusBaseRecentsModel;I)V
    .registers 4

    iput p3, p0, Lcom/android/quickstep/z;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/quickstep/z;->b:I

    iput-object p2, p0, Lcom/android/quickstep/z;->c:Lcom/android/quickstep/OplusBaseRecentsModel;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/android/quickstep/z;->a:I

    packed-switch v0, :pswitch_data_1a

    goto :goto_10

    :pswitch_6  #0x0
    iget v0, p0, Lcom/android/quickstep/z;->b:I

    iget-object p0, p0, Lcom/android/quickstep/z;->c:Lcom/android/quickstep/OplusBaseRecentsModel;

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {v0, p0, p1}, Lcom/android/quickstep/OplusBaseRecentsModel;->c(ILcom/android/quickstep/OplusBaseRecentsModel;Ljava/util/ArrayList;)V

    return-void

    :goto_10
    iget v0, p0, Lcom/android/quickstep/z;->b:I

    iget-object p0, p0, Lcom/android/quickstep/z;->c:Lcom/android/quickstep/OplusBaseRecentsModel;

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {v0, p0, p1}, Lcom/android/quickstep/OplusBaseRecentsModel;->a(ILcom/android/quickstep/OplusBaseRecentsModel;Ljava/util/ArrayList;)V

    return-void

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
