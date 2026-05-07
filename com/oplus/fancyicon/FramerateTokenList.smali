.class public Lcom/oplus/fancyicon/FramerateTokenList;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/fancyicon/FramerateTokenList$FramerateToken;,
        Lcom/oplus/fancyicon/FramerateTokenList$FramerateChangeListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "FramerateTokenList"


# instance fields
.field private mFramerateChangeListener:Lcom/oplus/fancyicon/FramerateTokenList$FramerateChangeListener;

.field private final mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/fancyicon/FramerateTokenList$FramerateToken;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxFramerate:F


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/fancyicon/FramerateTokenList;->mList:Ljava/util/ArrayList;

    return-void
.end method

.method public static bridge synthetic a(Lcom/oplus/fancyicon/FramerateTokenList;)Lcom/oplus/fancyicon/FramerateTokenList$FramerateChangeListener;
    .registers 1

    iget-object p0, p0, Lcom/oplus/fancyicon/FramerateTokenList;->mFramerateChangeListener:Lcom/oplus/fancyicon/FramerateTokenList$FramerateChangeListener;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/oplus/fancyicon/FramerateTokenList;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/fancyicon/FramerateTokenList;->onFrameRateChanged()V

    return-void
.end method

.method private onFrameRateChanged()V
    .registers 6

    iget-object v0, p0, Lcom/oplus/fancyicon/FramerateTokenList;->mList:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/oplus/fancyicon/FramerateTokenList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/fancyicon/FramerateTokenList$FramerateToken;

    iget v3, v3, Lcom/oplus/fancyicon/FramerateTokenList$FramerateToken;->mFrameRate:F

    cmpl-float v4, v3, v2

    if-lez v4, :cond_a

    move v2, v3

    goto :goto_a

    :cond_1e
    const/high16 v1, 0x42700000  # 60.0f

    cmpl-float v3, v2, v1

    if-lez v3, :cond_25

    move v2, v1

    :cond_25
    iput v2, p0, Lcom/oplus/fancyicon/FramerateTokenList;->mMaxFramerate:F

    monitor-exit v0

    return-void

    :catchall_29
    move-exception p0

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw p0
.end method


# virtual methods
.method public createToken(Ljava/lang/String;)Lcom/oplus/fancyicon/FramerateTokenList$FramerateToken;
    .registers 5

    const-string v0, "FramerateTokenList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createToken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/fancyicon/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/oplus/fancyicon/FramerateTokenList$FramerateToken;

    invoke-direct {v0, p0, p1}, Lcom/oplus/fancyicon/FramerateTokenList$FramerateToken;-><init>(Lcom/oplus/fancyicon/FramerateTokenList;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/fancyicon/FramerateTokenList;->mList:Ljava/util/ArrayList;

    monitor-enter p1

    :try_start_1e
    iget-object p0, p0, Lcom/oplus/fancyicon/FramerateTokenList;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p1

    return-object v0

    :catchall_25
    move-exception p0

    monitor-exit p1
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_25

    throw p0
.end method

.method public getMaxFramerate()F
    .registers 1

    iget p0, p0, Lcom/oplus/fancyicon/FramerateTokenList;->mMaxFramerate:F

    return p0
.end method

.method public setFramerateChangeListener(Lcom/oplus/fancyicon/FramerateTokenList$FramerateChangeListener;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/fancyicon/FramerateTokenList;->mFramerateChangeListener:Lcom/oplus/fancyicon/FramerateTokenList$FramerateChangeListener;

    return-void
.end method
