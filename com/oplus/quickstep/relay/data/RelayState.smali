.class public abstract Lcom/oplus/quickstep/relay/data/RelayState;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/relay/data/RelayState$RelayDataStart;,
        Lcom/oplus/quickstep/relay/data/RelayState$RelayDataEnd;,
        Lcom/oplus/quickstep/relay/data/RelayState$EnterRecent;,
        Lcom/oplus/quickstep/relay/data/RelayState$ExitRecent;,
        Lcom/oplus/quickstep/relay/data/RelayState$ExitRecentImmediately;,
        Lcom/oplus/quickstep/relay/data/RelayState$ClickClearAll;,
        Lcom/oplus/quickstep/relay/data/RelayState$FoldExpand;
    }
.end annotation


# instance fields
.field private final attachView:Z

.field private final desc:Ljava/lang/String;

.field private final detachView:Z

.field private final dismissTips:Z

.field private final hideView:Z

.field private final immediately:Z

.field private final saveTipsDismiss:Z

.field private final showTips:Z

.field private final showView:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;ZZZZZZZZ)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/relay/data/RelayState;->desc:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/oplus/quickstep/relay/data/RelayState;->attachView:Z

    iput-boolean p3, p0, Lcom/oplus/quickstep/relay/data/RelayState;->detachView:Z

    iput-boolean p4, p0, Lcom/oplus/quickstep/relay/data/RelayState;->showView:Z

    iput-boolean p5, p0, Lcom/oplus/quickstep/relay/data/RelayState;->hideView:Z

    iput-boolean p6, p0, Lcom/oplus/quickstep/relay/data/RelayState;->immediately:Z

    iput-boolean p7, p0, Lcom/oplus/quickstep/relay/data/RelayState;->showTips:Z

    iput-boolean p8, p0, Lcom/oplus/quickstep/relay/data/RelayState;->dismissTips:Z

    iput-boolean p9, p0, Lcom/oplus/quickstep/relay/data/RelayState;->saveTipsDismiss:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZZZZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 24

    and-int/lit8 v0, p10, 0x20

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    move v7, v0

    goto :goto_9

    :cond_7
    move/from16 v7, p6

    :goto_9
    const/4 v11, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v1 .. v11}, Lcom/oplus/quickstep/relay/data/RelayState;-><init>(Ljava/lang/String;ZZZZZZZZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZZZZZZZZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 11

    invoke-direct/range {p0 .. p9}, Lcom/oplus/quickstep/relay/data/RelayState;-><init>(Ljava/lang/String;ZZZZZZZZ)V

    return-void
.end method


# virtual methods
.method public final getAttachView()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/relay/data/RelayState;->attachView:Z

    return p0
.end method

.method public final getDesc()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/relay/data/RelayState;->desc:Ljava/lang/String;

    return-object p0
.end method

.method public final getDetachView()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/relay/data/RelayState;->detachView:Z

    return p0
.end method

.method public final getDismissTips()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/relay/data/RelayState;->dismissTips:Z

    return p0
.end method

.method public final getHideView()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/relay/data/RelayState;->hideView:Z

    return p0
.end method

.method public final getImmediately()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/relay/data/RelayState;->immediately:Z

    return p0
.end method

.method public final getSaveTipsDismiss()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/relay/data/RelayState;->saveTipsDismiss:Z

    return p0
.end method

.method public final getShowTips()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/relay/data/RelayState;->showTips:Z

    return p0
.end method

.method public final getShowView()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/relay/data/RelayState;->showView:Z

    return p0
.end method
