.class public Lcom/nearme/instant/xcard/statitics/StatConfig;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private statisticCaller:Lcom/nearme/instant/xcard/statitics/StatisticCallback;


# direct methods
.method public constructor <init>(Lcom/nearme/instant/xcard/statitics/StatisticCallback;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nearme/instant/xcard/statitics/StatConfig;->statisticCaller:Lcom/nearme/instant/xcard/statitics/StatisticCallback;

    return-void
.end method


# virtual methods
.method public getStatisticCaller()Lcom/nearme/instant/xcard/statitics/StatisticCallback;
    .registers 1

    iget-object p0, p0, Lcom/nearme/instant/xcard/statitics/StatConfig;->statisticCaller:Lcom/nearme/instant/xcard/statitics/StatisticCallback;

    return-object p0
.end method

.method public setStatisticCaller(Lcom/nearme/instant/xcard/statitics/StatisticCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/nearme/instant/xcard/statitics/StatConfig;->statisticCaller:Lcom/nearme/instant/xcard/statitics/StatisticCallback;

    return-void
.end method
