.class Lcom/oplus/statistics/strategy/WorkThread$SingletonHolder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/statistics/strategy/WorkThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/oplus/statistics/strategy/WorkThread;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/statistics/strategy/WorkThread;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/statistics/strategy/WorkThread;-><init>(Lcom/oplus/statistics/strategy/WorkThread$1;)V

    sput-object v0, Lcom/oplus/statistics/strategy/WorkThread$SingletonHolder;->INSTANCE:Lcom/oplus/statistics/strategy/WorkThread;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lcom/oplus/statistics/strategy/WorkThread;
    .registers 1

    sget-object v0, Lcom/oplus/statistics/strategy/WorkThread$SingletonHolder;->INSTANCE:Lcom/oplus/statistics/strategy/WorkThread;

    return-object v0
.end method
