.class public Lcom/oplus/quickstep/events/EventBus;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/events/EventBus$InterprocessEvent;,
        Lcom/oplus/quickstep/events/EventBus$ReusableEvent;,
        Lcom/oplus/quickstep/events/EventBus$AnimatedEvent;,
        Lcom/oplus/quickstep/events/EventBus$Event;
    }
.end annotation


# static fields
.field private static final DEBUG_TRACE_ALL:Z = false

.field private static final DEFAULT_SUBSCRIBER_PRIORITY:I = 0x1

.field private static final EVENT_HANDLER_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/oplus/quickstep/events/EventHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static final EXTRA_INTERPROCESS_EVENT_BUNDLE:Ljava/lang/String; = "interprocess_event_bundle"

.field private static final INTERPROCESS_METHOD_PREFIX:Ljava/lang/String; = "onInterprocessBusEvent"

.field private static final METHOD_PREFIX:Ljava/lang/String; = "onBusEvent"

.field private static final PERMISSION_SELF:Ljava/lang/String; = "com.android.systemui.permission.SELF"

.field private static final TAG:Ljava/lang/String; = "EventBus"

.field private static volatile sDefaultBus:Lcom/oplus/quickstep/events/EventBus;

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private mCallCount:I

.field private mCallDurationMicros:J

.field private final mEventTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/oplus/quickstep/events/EventBus$Event;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/quickstep/events/EventHandler;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mHasRegisteredReceiver:Z

.field private final mInterprocessEventNameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/oplus/quickstep/events/EventBus$InterprocessEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSubscriberTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/quickstep/events/EventHandlerMethod;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSubscribers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/quickstep/events/Subscriber;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/quickstep/events/EventBus$1;

    invoke-direct {v0}, Lcom/oplus/quickstep/events/EventBus$1;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/events/EventBus;->EVENT_HANDLER_COMPARATOR:Ljava/util/Comparator;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/events/EventBus;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;)V
    .registers 3

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/events/EventBus;->mEventTypeMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/events/EventBus;->mSubscriberTypeMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/events/EventBus;->mInterprocessEventNameMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/events/EventBus;->mSubscribers:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oplus/quickstep/events/EventBus;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic access$000(Lcom/oplus/quickstep/events/EventBus;Lcom/oplus/quickstep/events/EventHandler;Lcom/oplus/quickstep/events/EventBus$Event;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/quickstep/events/EventBus;->processEvent(Lcom/oplus/quickstep/events/EventHandler;Lcom/oplus/quickstep/events/EventBus$Event;)V

    return-void
.end method

.method private findRegisteredSubscriber(Ljava/lang/Object;Z)Z
    .registers 6

    iget-object v0, p0, Lcom/oplus/quickstep/events/EventBus;->mSubscribers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_23

    iget-object v2, p0, Lcom/oplus/quickstep/events/EventBus;->mSubscribers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/quickstep/events/Subscriber;

    invoke-virtual {v2}, Lcom/oplus/quickstep/events/Subscriber;->getReference()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_20

    if-eqz p2, :cond_1f

    iget-object p0, p0, Lcom/oplus/quickstep/events/EventBus;->mSubscribers:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1f
    return v1

    :cond_20
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_23
    const/4 p0, 0x0

    return p0
.end method

.method public static getDefault()Lcom/oplus/quickstep/events/EventBus;
    .registers 3

    sget-object v0, Lcom/oplus/quickstep/events/EventBus;->sDefaultBus:Lcom/oplus/quickstep/events/EventBus;

    if-nez v0, :cond_1b

    sget-object v0, Lcom/oplus/quickstep/events/EventBus;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/oplus/quickstep/events/EventBus;->sDefaultBus:Lcom/oplus/quickstep/events/EventBus;

    if-nez v1, :cond_16

    new-instance v1, Lcom/oplus/quickstep/events/EventBus;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/oplus/quickstep/events/EventBus;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/oplus/quickstep/events/EventBus;->sDefaultBus:Lcom/oplus/quickstep/events/EventBus;

    :cond_16
    monitor-exit v0

    goto :goto_1b

    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw v1

    :cond_1b
    :goto_1b
    sget-object v0, Lcom/oplus/quickstep/events/EventBus;->sDefaultBus:Lcom/oplus/quickstep/events/EventBus;

    return-object v0
.end method

.method private isValidEventBusHandlerMethod(Ljava/lang/reflect/Method;[Ljava/lang/Class;Landroid/util/MutableBoolean;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/util/MutableBoolean;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result p0

    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_53

    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result p0

    if-eqz p0, :cond_53

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p0

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_53

    array-length p0, p2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_53

    const-class p0, Lcom/oplus/quickstep/events/EventBus$InterprocessEvent;

    aget-object v2, p2, v1

    invoke-virtual {p0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_3a

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v2, "onInterprocessBusEvent"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3a

    iput-boolean v0, p3, Landroid/util/MutableBoolean;->value:Z

    return v0

    :cond_3a
    const-class p0, Lcom/oplus/quickstep/events/EventBus$Event;

    aget-object p2, p2, v1

    invoke-virtual {p0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_53

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onBusEvent"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_53

    iput-boolean v1, p3, Landroid/util/MutableBoolean;->value:Z

    return v0

    :cond_53
    return v1
.end method

.method private static logWithPid(Ljava/lang/String;)V
    .registers 3

    const-string v0, "["

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "EventBus"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private processEvent(Lcom/oplus/quickstep/events/EventHandler;Lcom/oplus/quickstep/events/EventBus$Event;)V
    .registers 5

    const-string p0, "EventBus"

    iget-boolean v0, p2, Lcom/oplus/quickstep/events/EventBus$Event;->cancelled:Z

    if-eqz v0, :cond_11

    iget-boolean p0, p2, Lcom/oplus/quickstep/events/EventBus$Event;->trace:Z

    if-nez p0, :cond_b

    goto :goto_10

    :cond_b
    const-string p0, "Event dispatch cancelled"

    invoke-static {p0}, Lcom/oplus/quickstep/events/EventBus;->logWithPid(Ljava/lang/String;)V

    :goto_10
    return-void

    :cond_11
    :try_start_11
    iget-boolean v0, p2, Lcom/oplus/quickstep/events/EventBus$Event;->trace:Z

    if-nez v0, :cond_16

    goto :goto_2e

    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oplus/quickstep/events/EventHandler;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/quickstep/events/EventBus;->logWithPid(Ljava/lang/String;)V

    :goto_2e
    iget-object v0, p1, Lcom/oplus/quickstep/events/EventHandler;->subscriber:Lcom/oplus/quickstep/events/Subscriber;

    invoke-virtual {v0}, Lcom/oplus/quickstep/events/Subscriber;->getReference()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3c

    iget-object p1, p1, Lcom/oplus/quickstep/events/EventHandler;->method:Lcom/oplus/quickstep/events/EventHandlerMethod;

    invoke-virtual {p1, v0, p2}, Lcom/oplus/quickstep/events/EventHandlerMethod;->invoke(Ljava/lang/Object;Lcom/oplus/quickstep/events/EventBus$Event;)V

    goto :goto_57

    :cond_3c
    const-string p1, "Failed to deliver event to null subscriber"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catch Ljava/lang/IllegalAccessException; {:try_start_11 .. :try_end_41} :catch_4d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_11 .. :try_end_41} :catch_42

    goto :goto_57

    :catch_42
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_4d
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    const-string p2, "Failed to invoke method"

    invoke-static {p0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_57
    return-void
.end method

.method private queueEvent(Lcom/oplus/quickstep/events/EventBus$Event;)V
    .registers 8

    iget-object v0, p0, Lcom/oplus/quickstep/events/EventBus;->mEventTypeMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_15

    invoke-virtual {p1}, Lcom/oplus/quickstep/events/EventBus$Event;->onPreDispatch()V

    invoke-virtual {p1}, Lcom/oplus/quickstep/events/EventBus$Event;->onPostDispatch()V

    return-void

    :cond_15
    invoke-virtual {p1}, Lcom/oplus/quickstep/events/EventBus$Event;->onPreDispatch()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_24
    if-ge v2, v1, :cond_4a

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/quickstep/events/EventHandler;

    iget-object v5, v4, Lcom/oplus/quickstep/events/EventHandler;->subscriber:Lcom/oplus/quickstep/events/Subscriber;

    invoke-virtual {v5}, Lcom/oplus/quickstep/events/Subscriber;->getReference()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_47

    iget-boolean v5, p1, Lcom/oplus/quickstep/events/EventBus$Event;->requiresPost:Z

    if-eqz v5, :cond_44

    iget-object v3, p0, Lcom/oplus/quickstep/events/EventBus;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/oplus/quickstep/events/EventBus$4;

    invoke-direct {v5, p0, v4, p1}, Lcom/oplus/quickstep/events/EventBus$4;-><init>(Lcom/oplus/quickstep/events/EventBus;Lcom/oplus/quickstep/events/EventHandler;Lcom/oplus/quickstep/events/EventBus$Event;)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v3, 0x1

    goto :goto_47

    :cond_44
    invoke-direct {p0, v4, p1}, Lcom/oplus/quickstep/events/EventBus;->processEvent(Lcom/oplus/quickstep/events/EventHandler;Lcom/oplus/quickstep/events/EventBus$Event;)V

    :cond_47
    :goto_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :cond_4a
    if-eqz v3, :cond_57

    iget-object v0, p0, Lcom/oplus/quickstep/events/EventBus;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oplus/quickstep/events/EventBus$5;

    invoke-direct {v1, p0, p1}, Lcom/oplus/quickstep/events/EventBus$5;-><init>(Lcom/oplus/quickstep/events/EventBus;Lcom/oplus/quickstep/events/EventBus$Event;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_5a

    :cond_57
    invoke-virtual {p1}, Lcom/oplus/quickstep/events/EventBus$Event;->onPostDispatch()V

    :goto_5a
    return-void
.end method

.method private registerReceiverForInterprocessEvents(Landroid/content/Context;)V
    .registers 8

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    iget-object v0, p0, Lcom/oplus/quickstep/events/EventBus;->mInterprocessEventNameMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_f

    :cond_1f
    iget-boolean v0, p0, Lcom/oplus/quickstep/events/EventBus;->mHasRegisteredReceiver:Z

    if-eqz v0, :cond_26

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_26
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/oplus/quickstep/events/EventBus;->mHandler:Landroid/os/Handler;

    const-string v4, "com.android.systemui.permission.SELF"

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oplus/quickstep/events/EventBus;->mHasRegisteredReceiver:Z

    return-void
.end method

.method private registerSubscriber(Ljava/lang/Object;ILandroid/util/MutableBoolean;)V
    .registers 16

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/oplus/quickstep/events/EventBus;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_e0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oplus/quickstep/events/EventBus;->findRegisteredSubscriber(Ljava/lang/Object;Z)Z

    move-result v1

    if-eqz v1, :cond_22

    return-void

    :cond_22
    new-instance v1, Lcom/oplus/quickstep/events/Subscriber;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-direct {v1, p1, v2, v3}, Lcom/oplus/quickstep/events/Subscriber;-><init>(Ljava/lang/Object;J)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    iget-object v2, p0, Lcom/oplus/quickstep/events/EventBus;->mSubscriberTypeMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_65

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/oplus/quickstep/events/EventHandlerMethod;

    iget-object v0, p0, Lcom/oplus/quickstep/events/EventBus;->mEventTypeMap:Ljava/util/HashMap;

    iget-object v2, p3, Lcom/oplus/quickstep/events/EventHandlerMethod;->eventType:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    new-instance v2, Lcom/oplus/quickstep/events/EventHandler;

    invoke-direct {v2, v1, p3, p2}, Lcom/oplus/quickstep/events/EventHandler;-><init>(Lcom/oplus/quickstep/events/Subscriber;Lcom/oplus/quickstep/events/EventHandlerMethod;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Lcom/oplus/quickstep/events/EventBus;->sortEventHandlersByPriority(Ljava/util/List;)V

    goto :goto_3d

    :cond_5f
    iget-object p0, p0, Lcom/oplus/quickstep/events/EventBus;->mSubscribers:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_65
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/oplus/quickstep/events/EventBus;->mSubscriberTypeMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/oplus/quickstep/events/EventBus;->mSubscribers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Landroid/util/MutableBoolean;

    invoke-direct {v3, v0}, Landroid/util/MutableBoolean;-><init>(Z)V

    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p1

    array-length v4, p1

    move v5, v0

    :goto_7f
    if-ge v5, v4, :cond_df

    aget-object v6, p1, v5

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    iput-boolean v0, v3, Landroid/util/MutableBoolean;->value:Z

    invoke-direct {p0, v6, v7, v3}, Lcom/oplus/quickstep/events/EventBus;->isValidEventBusHandlerMethod(Ljava/lang/reflect/Method;[Ljava/lang/Class;Landroid/util/MutableBoolean;)Z

    move-result v8

    if-eqz v8, :cond_dc

    aget-object v7, v7, v0

    iget-object v8, p0, Lcom/oplus/quickstep/events/EventBus;->mEventTypeMap:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    if-nez v8, :cond_a5

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v9, p0, Lcom/oplus/quickstep/events/EventBus;->mEventTypeMap:Ljava/util/HashMap;

    invoke-virtual {v9, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a5
    iget-boolean v9, v3, Landroid/util/MutableBoolean;->value:Z

    if-eqz v9, :cond_c9

    const/4 v9, 0x1

    :try_start_aa
    new-array v10, v9, [Ljava/lang/Class;

    const-class v11, Landroid/os/Bundle;

    aput-object v11, v10, v0

    invoke-virtual {v7, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    iget-object v10, p0, Lcom/oplus/quickstep/events/EventBus;->mInterprocessEventNameMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_c9

    iput-boolean v9, p3, Landroid/util/MutableBoolean;->value:Z
    :try_end_c0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_aa .. :try_end_c0} :catch_c1

    goto :goto_c9

    :catch_c1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Expected InterprocessEvent to have a Bundle constructor"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c9
    :goto_c9
    new-instance v9, Lcom/oplus/quickstep/events/EventHandlerMethod;

    invoke-direct {v9, v6, v7}, Lcom/oplus/quickstep/events/EventHandlerMethod;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Class;)V

    new-instance v6, Lcom/oplus/quickstep/events/EventHandler;

    invoke-direct {v6, v1, v9, p2}, Lcom/oplus/quickstep/events/EventHandler;-><init>(Lcom/oplus/quickstep/events/Subscriber;Lcom/oplus/quickstep/events/EventHandlerMethod;I)V

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v8}, Lcom/oplus/quickstep/events/EventBus;->sortEventHandlersByPriority(Ljava/util/List;)V

    :cond_dc
    add-int/lit8 v5, v5, 0x1

    goto :goto_7f

    :cond_df
    return-void

    :cond_e0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Can not register() a subscriber from a non-main thread."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private sortEventHandlersByPriority(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/quickstep/events/EventHandler;",
            ">;)V"
        }
    .end annotation

    sget-object p0, Lcom/oplus/quickstep/events/EventBus;->EVENT_HANDLER_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/events/EventBus;->dumpInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public dumpInternal(Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    const-string v0, "  "

    invoke-static {p1, v0}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Registered class types:"

    const-string v3, "\n"

    invoke-static {p1, v2, v3}, Landroidx/activity/result/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/oplus/quickstep/events/EventBus;->mSubscriberTypeMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v5, Lcom/oplus/quickstep/events/EventBus$2;

    invoke-direct {v5, p0}, Lcom/oplus/quickstep/events/EventBus$2;-><init>(Lcom/oplus/quickstep/events/EventBus;)V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v5, 0x0

    move v6, v5

    :goto_27
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_43

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Class;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_27

    :cond_43
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Event map:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/oplus/quickstep/events/EventBus;->mEventTypeMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {p1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v4, Lcom/oplus/quickstep/events/EventBus$3;

    invoke-direct {v4, p0}, Lcom/oplus/quickstep/events/EventBus$3;-><init>(Lcom/oplus/quickstep/events/EventBus;)V

    invoke-static {p1, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :goto_61
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v5, v4, :cond_df

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " -> "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/oplus/quickstep/events/EventBus;->mEventTypeMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8b
    :goto_8b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_dc

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oplus/quickstep/events/EventHandler;

    iget-object v7, v6, Lcom/oplus/quickstep/events/EventHandler;->subscriber:Lcom/oplus/quickstep/events/Subscriber;

    invoke-virtual {v7}, Lcom/oplus/quickstep/events/Subscriber;->getReference()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_8b

    invoke-static {v7}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " [0x"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v6, Lcom/oplus/quickstep/events/EventHandler;->priority:I

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8b

    :cond_dc
    add-int/lit8 v5, v5, 0x1

    goto :goto_61

    :cond_df
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    const-string p1, "interprocess_event_bundle"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/quickstep/events/EventBus;->mInterprocessEventNameMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Class;

    const/4 v0, 0x1

    :try_start_13
    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Landroid/os/Bundle;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p2, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/quickstep/events/EventBus$Event;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/events/EventBus;->send(Lcom/oplus/quickstep/events/EventBus$Event;)V
    :try_end_2b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_13 .. :try_end_2b} :catch_2c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_13 .. :try_end_2b} :catch_2c
    .catch Ljava/lang/InstantiationException; {:try_start_13 .. :try_end_2b} :catch_2c
    .catch Ljava/lang/IllegalAccessException; {:try_start_13 .. :try_end_2b} :catch_2c

    goto :goto_38

    :catch_2c
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    const-string p1, "EventBus"

    const-string p2, "Failed to create InterprocessEvent"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_38
    return-void
.end method

.method public post(Lcom/oplus/quickstep/events/EventBus$Event;)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/oplus/quickstep/events/EventBus$Event;->requiresPost:Z

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/oplus/quickstep/events/EventBus$Event;->cancelled:Z

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/events/EventBus;->queueEvent(Lcom/oplus/quickstep/events/EventBus$Event;)V

    return-void
.end method

.method public post(Lcom/oplus/quickstep/events/EventBus$InterprocessEvent;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Not supported, use postInterprocess"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public register(Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/oplus/quickstep/events/EventBus;->registerSubscriber(Ljava/lang/Object;ILandroid/util/MutableBoolean;)V

    return-void
.end method

.method public register(Ljava/lang/Object;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/quickstep/events/EventBus;->registerSubscriber(Ljava/lang/Object;ILandroid/util/MutableBoolean;)V

    return-void
.end method

.method public registerInterprocessAsCurrentUser(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/oplus/quickstep/events/EventBus;->registerInterprocessAsCurrentUser(Landroid/content/Context;Ljava/lang/Object;I)V

    return-void
.end method

.method public registerInterprocessAsCurrentUser(Landroid/content/Context;Ljava/lang/Object;I)V
    .registers 6

    new-instance v0, Landroid/util/MutableBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/MutableBoolean;-><init>(Z)V

    invoke-direct {p0, p2, p3, v0}, Lcom/oplus/quickstep/events/EventBus;->registerSubscriber(Ljava/lang/Object;ILandroid/util/MutableBoolean;)V

    iget-boolean p2, v0, Landroid/util/MutableBoolean;->value:Z

    if-eqz p2, :cond_10

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/events/EventBus;->registerReceiverForInterprocessEvents(Landroid/content/Context;)V

    :cond_10
    return-void
.end method

.method public send(Lcom/oplus/quickstep/events/EventBus$Event;)V
    .registers 6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/oplus/quickstep/events/EventBus;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_23

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/oplus/quickstep/events/EventBus$Event;->requiresPost:Z

    iput-boolean v0, p1, Lcom/oplus/quickstep/events/EventBus$Event;->cancelled:Z

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/events/EventBus;->queueEvent(Lcom/oplus/quickstep/events/EventBus$Event;)V

    return-void

    :cond_23
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Can not send() a message from a non-main thread."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public send(Lcom/oplus/quickstep/events/EventBus$InterprocessEvent;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Not supported, use postInterprocess"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public sendOntoMainThread(Lcom/oplus/quickstep/events/EventBus$Event;)V
    .registers 6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/oplus/quickstep/events/EventBus;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1e

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/events/EventBus;->post(Lcom/oplus/quickstep/events/EventBus$Event;)V

    goto :goto_21

    :cond_1e
    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/events/EventBus;->send(Lcom/oplus/quickstep/events/EventBus$Event;)V

    :goto_21
    return-void
.end method

.method public unregister(Ljava/lang/Object;)V
    .registers 7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/oplus/quickstep/events/EventBus;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_66

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/oplus/quickstep/events/EventBus;->findRegisteredSubscriber(Ljava/lang/Object;Z)Z

    move-result v1

    if-nez v1, :cond_22

    return-void

    :cond_22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/quickstep/events/EventBus;->mSubscriberTypeMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_65

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_34
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_65

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/quickstep/events/EventHandlerMethod;

    iget-object v3, p0, Lcom/oplus/quickstep/events/EventBus;->mEventTypeMap:Ljava/util/HashMap;

    iget-object v2, v2, Lcom/oplus/quickstep/events/EventHandlerMethod;->eventType:Ljava/lang/Class;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v0

    :goto_4f
    if-ltz v3, :cond_34

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/quickstep/events/EventHandler;

    iget-object v4, v4, Lcom/oplus/quickstep/events/EventHandler;->subscriber:Lcom/oplus/quickstep/events/Subscriber;

    invoke-virtual {v4}, Lcom/oplus/quickstep/events/Subscriber;->getReference()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_62

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_62
    add-int/lit8 v3, v3, -0x1

    goto :goto_4f

    :cond_65
    return-void

    :cond_66
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Can not unregister() a subscriber from a non-main thread."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unregisterInterprocess(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 3

    invoke-virtual {p0, p2}, Lcom/oplus/quickstep/events/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method
