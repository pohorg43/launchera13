.class public final synthetic Lcom/android/launcher3/dot/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/dot/SmallAppUtils$SmallAppWhiteListObserver;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/dot/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/dot/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/dot/SmallAppUtils;I)V
    .registers 3

    iput p2, p0, Lcom/android/launcher3/dot/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/dot/a;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/launcher3/dot/a;->a:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_16

    :pswitch_6  #0x1
    iget-object p0, p0, Lcom/android/launcher3/dot/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/dot/SmallAppUtils;

    invoke-virtual {p0}, Lcom/android/launcher3/dot/SmallAppUtils;->initSmallAppList()V

    return-void

    :pswitch_e  #0x0
    iget-object p0, p0, Lcom/android/launcher3/dot/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/dot/SmallAppUtils;

    invoke-virtual {p0}, Lcom/android/launcher3/dot/SmallAppUtils;->registerSmallAppWhiteListObserver()V

    return-void

    :goto_16
    iget-object p0, p0, Lcom/android/launcher3/dot/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/dot/SmallAppUtils$SmallAppWhiteListObserver;

    invoke-static {p0}, Lcom/android/launcher3/dot/SmallAppUtils$SmallAppWhiteListObserver;->a(Lcom/android/launcher3/dot/SmallAppUtils$SmallAppWhiteListObserver;)V

    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_e  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
