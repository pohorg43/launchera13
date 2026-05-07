.class Lcom/oplus/statistics/strategy/ChattyEventTracker$SingletonHolder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/statistics/strategy/ChattyEventTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final instance:Lcom/oplus/statistics/strategy/ChattyEventTracker;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/statistics/strategy/ChattyEventTracker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/statistics/strategy/ChattyEventTracker;-><init>(Lcom/oplus/statistics/strategy/ChattyEventTracker$1;)V

    sput-object v0, Lcom/oplus/statistics/strategy/ChattyEventTracker$SingletonHolder;->instance:Lcom/oplus/statistics/strategy/ChattyEventTracker;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lcom/oplus/statistics/strategy/ChattyEventTracker;
    .registers 1

    sget-object v0, Lcom/oplus/statistics/strategy/ChattyEventTracker$SingletonHolder;->instance:Lcom/oplus/statistics/strategy/ChattyEventTracker;

    return-object v0
.end method
