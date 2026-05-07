.class Lcom/oplus/statistics/record/ProxyRecorder$SingletonHolder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/statistics/record/ProxyRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingletonHolder"
.end annotation


# static fields
.field private static instance:Lcom/oplus/statistics/record/ProxyRecorder;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/statistics/record/ProxyRecorder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/statistics/record/ProxyRecorder;-><init>(Lcom/oplus/statistics/record/ProxyRecorder$1;)V

    sput-object v0, Lcom/oplus/statistics/record/ProxyRecorder$SingletonHolder;->instance:Lcom/oplus/statistics/record/ProxyRecorder;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$100()Lcom/oplus/statistics/record/ProxyRecorder;
    .registers 1

    sget-object v0, Lcom/oplus/statistics/record/ProxyRecorder$SingletonHolder;->instance:Lcom/oplus/statistics/record/ProxyRecorder;

    return-object v0
.end method
