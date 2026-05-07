.class final Lcom/oplus/card/util/DispatchersUtil$cardServerDispatcher$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/card/util/DispatchersUtil;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lq3/a1;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/card/util/DispatchersUtil$cardServerDispatcher$2;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/card/util/DispatchersUtil$cardServerDispatcher$2;

    invoke-direct {v0}, Lcom/oplus/card/util/DispatchersUtil$cardServerDispatcher$2;-><init>()V

    sput-object v0, Lcom/oplus/card/util/DispatchersUtil$cardServerDispatcher$2;->INSTANCE:Lcom/oplus/card/util/DispatchersUtil$cardServerDispatcher$2;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 1

    invoke-static {p0}, Lcom/oplus/card/util/DispatchersUtil$cardServerDispatcher$2;->invoke$lambda-0(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda-0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 3

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "card_server_thread"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/card/util/DispatchersUtil$cardServerDispatcher$2;->invoke()Lq3/a1;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Lq3/a1;
    .registers 2

    sget-object p0, Lcom/oplus/card/util/a;->a:Lcom/oplus/card/util/a;

    invoke-static {p0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    const-string v0, "single"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lq3/b1;

    invoke-direct {v0, p0}, Lq3/b1;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method
