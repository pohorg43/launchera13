.class public final Lcom/oplus/quickstep/utils/SwipeToAssistantScreenHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/utils/SwipeToAssistantScreenHelper$INSTANCE;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/quickstep/utils/SwipeToAssistantScreenHelper$INSTANCE;

.field private static final TAG:Ljava/lang/String; = "SwipeToAssistantScreenHelper"


# instance fields
.field private deferredCallback:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/utils/SwipeToAssistantScreenHelper$INSTANCE;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/utils/SwipeToAssistantScreenHelper$INSTANCE;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/utils/SwipeToAssistantScreenHelper;->INSTANCE:Lcom/oplus/quickstep/utils/SwipeToAssistantScreenHelper$INSTANCE;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/quickstep/utils/SwipeToAssistantScreenHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public final clearDeferredCallback()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/quickstep/utils/SwipeToAssistantScreenHelper;->deferredCallback:Ljava/lang/Runnable;

    return-void
.end method

.method public final runDeferredCallback()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/utils/SwipeToAssistantScreenHelper;->deferredCallback:Ljava/lang/Runnable;

    if-nez p0, :cond_5

    goto :goto_8

    :cond_5
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :goto_8
    return-void
.end method

.method public final setDeferredCallback(Ljava/lang/Runnable;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/utils/SwipeToAssistantScreenHelper;->deferredCallback:Ljava/lang/Runnable;

    return-void
.end method
