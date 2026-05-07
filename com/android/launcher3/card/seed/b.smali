.class public final synthetic Lcom/android/launcher3/card/seed/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/oplus/seedling/sdk/manager/ISeedlingManager;

.field public final synthetic c:Lcom/oplus/seedling/sdk/entity/StatisticsBean;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/seedling/sdk/manager/ISeedlingManager;Lcom/oplus/seedling/sdk/entity/StatisticsBean;I)V
    .registers 5

    iput p3, p0, Lcom/android/launcher3/card/seed/b;->a:I

    const/4 v0, 0x1

    if-eq p3, v0, :cond_19

    const/4 v0, 0x2

    if-eq p3, v0, :cond_11

    const/4 v0, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/seed/b;->b:Lcom/oplus/seedling/sdk/manager/ISeedlingManager;

    iput-object p2, p0, Lcom/android/launcher3/card/seed/b;->c:Lcom/oplus/seedling/sdk/entity/StatisticsBean;

    return-void

    :cond_11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/seed/b;->b:Lcom/oplus/seedling/sdk/manager/ISeedlingManager;

    iput-object p2, p0, Lcom/android/launcher3/card/seed/b;->c:Lcom/oplus/seedling/sdk/entity/StatisticsBean;

    return-void

    :cond_19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/seed/b;->b:Lcom/oplus/seedling/sdk/manager/ISeedlingManager;

    iput-object p2, p0, Lcom/android/launcher3/card/seed/b;->c:Lcom/oplus/seedling/sdk/entity/StatisticsBean;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/launcher3/card/seed/b;->a:I

    packed-switch v0, :pswitch_data_26

    goto :goto_1e

    :pswitch_6  #0x2
    iget-object v0, p0, Lcom/android/launcher3/card/seed/b;->b:Lcom/oplus/seedling/sdk/manager/ISeedlingManager;

    iget-object p0, p0, Lcom/android/launcher3/card/seed/b;->c:Lcom/oplus/seedling/sdk/entity/StatisticsBean;

    invoke-static {v0, p0}, Lcom/android/launcher3/card/seed/StatisticsRecorder$Companion$reportRefreshEventInSaleMode$1$2$1;->a(Lcom/oplus/seedling/sdk/manager/ISeedlingManager;Lcom/oplus/seedling/sdk/entity/StatisticsBean;)V

    return-void

    :pswitch_e  #0x1
    iget-object v0, p0, Lcom/android/launcher3/card/seed/b;->b:Lcom/oplus/seedling/sdk/manager/ISeedlingManager;

    iget-object p0, p0, Lcom/android/launcher3/card/seed/b;->c:Lcom/oplus/seedling/sdk/entity/StatisticsBean;

    invoke-static {v0, p0}, Lcom/android/launcher3/card/seed/StatisticsRecorder$Companion;->b(Lcom/oplus/seedling/sdk/manager/ISeedlingManager;Lcom/oplus/seedling/sdk/entity/StatisticsBean;)V

    return-void

    :pswitch_16  #0x0
    iget-object v0, p0, Lcom/android/launcher3/card/seed/b;->b:Lcom/oplus/seedling/sdk/manager/ISeedlingManager;

    iget-object p0, p0, Lcom/android/launcher3/card/seed/b;->c:Lcom/oplus/seedling/sdk/entity/StatisticsBean;

    invoke-static {v0, p0}, Lcom/android/launcher3/card/seed/StatisticsRecorder$Companion;->a(Lcom/oplus/seedling/sdk/manager/ISeedlingManager;Lcom/oplus/seedling/sdk/entity/StatisticsBean;)V

    return-void

    :goto_1e
    iget-object v0, p0, Lcom/android/launcher3/card/seed/b;->b:Lcom/oplus/seedling/sdk/manager/ISeedlingManager;

    iget-object p0, p0, Lcom/android/launcher3/card/seed/b;->c:Lcom/oplus/seedling/sdk/entity/StatisticsBean;

    invoke-static {v0, p0}, Lcom/android/launcher3/card/seed/StatisticsRecorder$Companion$reportRequestPushEvent$1$2$1;->a(Lcom/oplus/seedling/sdk/manager/ISeedlingManager;Lcom/oplus/seedling/sdk/entity/StatisticsBean;)V

    return-void

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_16  #00000000
        :pswitch_e  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
