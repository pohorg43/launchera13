.class public final synthetic Lcom/android/quickstep/o0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/function/Consumer;

.field public final synthetic c:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;Ljava/util/ArrayList;I)V
    .registers 5

    iput p3, p0, Lcom/android/quickstep/o0;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/o0;->b:Ljava/util/function/Consumer;

    iput-object p2, p0, Lcom/android/quickstep/o0;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/quickstep/o0;->a:I

    packed-switch v0, :pswitch_data_16

    goto :goto_e

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/quickstep/o0;->b:Ljava/util/function/Consumer;

    iget-object p0, p0, Lcom/android/quickstep/o0;->c:Ljava/util/ArrayList;

    invoke-static {v0, p0}, Lcom/android/quickstep/RecentTasksList;->d(Ljava/util/function/Consumer;Ljava/util/ArrayList;)V

    return-void

    :goto_e
    iget-object v0, p0, Lcom/android/quickstep/o0;->b:Ljava/util/function/Consumer;

    iget-object p0, p0, Lcom/android/quickstep/o0;->c:Ljava/util/ArrayList;

    invoke-static {v0, p0}, Lcom/android/quickstep/RecentTasksList;->a(Ljava/util/function/Consumer;Ljava/util/ArrayList;)V

    return-void

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
