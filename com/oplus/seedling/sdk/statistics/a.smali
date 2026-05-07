.class public final synthetic Lcom/oplus/seedling/sdk/statistics/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# static fields
.field public static final synthetic a:Lcom/oplus/seedling/sdk/statistics/a;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/seedling/sdk/statistics/a;

    invoke-direct {v0}, Lcom/oplus/seedling/sdk/statistics/a;-><init>()V

    sput-object v0, Lcom/oplus/seedling/sdk/statistics/a;->a:Lcom/oplus/seedling/sdk/statistics/a;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 2

    invoke-static {p1}, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil$statisticsDispatcher$2;->a(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method
