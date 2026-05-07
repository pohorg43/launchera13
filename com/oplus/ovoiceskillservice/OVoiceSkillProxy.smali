.class public Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$InnerBinderCallback;,
        Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$ConnectedTask;,
        Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$ConnectStatus;
    }
.end annotation


# static fields
.field private static final MAX_SESSION_COUNT:I = 0x1e

.field private static final SEPARATOR:Ljava/lang/String; = ";"

.field private static final TAG:Ljava/lang/String; = "OVSS.OVoiceSkillProxy"

.field private static final sInstance:Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;


# instance fields
.field private localConnectionCallbacks:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/oplus/ovoiceskillservice/OVoiceConnectionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mBinderPool:Lcom/oplus/ovoicecommon/BinderPool;

.field private mContext:Landroid/content/Context;

.field private mOVoiceSkillService:Lcom/oplus/ovoicemanager/service/IOVoiceSkillService;

.field private mSessionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSessionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oplus/ovoiceskillservice/SkillSession;",
            ">;"
        }
    .end annotation
.end field

.field private mStatus:Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$ConnectStatus;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;

    invoke-direct {v0}, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;-><init>()V

    sput-object v0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->sInstance:Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->mOVoiceSkillService:Lcom/oplus/ovoicemanager/service/IOVoiceSkillService;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->mSessionMap:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->mSessionList:Ljava/util/List;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->localConnectionCallbacks:Ljava/lang/ThreadLocal;

    sget-object v0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$ConnectStatus;->NONE:Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$ConnectStatus;

    iput-object v0, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->mStatus:Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$ConnectStatus;

    return-void
.end method

.method public static synthetic access$000(Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;)Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$ConnectStatus;
    .registers 1

    iget-object p0, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->mStatus:Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$ConnectStatus;

    return-object p0
.end method

.method public static synthetic access$002(Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$ConnectStatus;)Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$ConnectStatus;
    .registers 2

    iput-object p1, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->mStatus:Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$ConnectStatus;

    return-object p1
.end method

.method public static synthetic access$100(Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;)Lcom/oplus/ovoicemanager/service/IOVoiceSkillService;
    .registers 1

    iget-object p0, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->mOVoiceSkillService:Lcom/oplus/ovoicemanager/service/IOVoiceSkillService;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;Lcom/oplus/ovoicemanager/service/IOVoiceSkillService;)Lcom/oplus/ovoicemanager/service/IOVoiceSkillService;
    .registers 2

    iput-object p1, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->mOVoiceSkillService:Lcom/oplus/ovoicemanager/service/IOVoiceSkillService;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$202(Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;Landroid/content/Context;)Landroid/content/Context;
    .registers 2

    iput-object p1, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method public static synthetic access$300(Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;)Lcom/oplus/ovoicecommon/BinderPool;
    .registers 1

    iget-object p0, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->mBinderPool:Lcom/oplus/ovoicecommon/BinderPool;

    return-object p0
.end method

.method public static synthetic access$302(Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;Lcom/oplus/ovoicecommon/BinderPool;)Lcom/oplus/ovoicecommon/BinderPool;
    .registers 2

    iput-object p1, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->mBinderPool:Lcom/oplus/ovoicecommon/BinderPool;

    return-object p1
.end method

.method public static synthetic access$400(Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->mSessionMap:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->mSessionList:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;)Z
    .registers 1

    invoke-direct {p0}, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->isStatusValid()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$700()Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;
    .registers 1

    sget-object v0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->sInstance:Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;

    return-object v0
.end method

.method public static synthetic access$800(Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;)Ljava/lang/ThreadLocal;
    .registers 1

    iget-object p0, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->localConnectionCallbacks:Ljava/lang/ThreadLocal;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/ovoiceskillservice/SkillActionListener;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->newSkillSessionById(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/ovoiceskillservice/SkillActionListener;)Z

    move-result p0

    return p0
.end method

.method private afterNewSkillSession(Lcom/oplus/ovoiceskillservice/SkillSession;Z)V
    .registers 6

    const-string v0, "OVSS.OVoiceSkillProxy"

    if-nez p1, :cond_a

    const-string p0, "session is null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    const-string v1, "notifyNewSkillSession, processing"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p1, Lcom/oplus/ovoiceskillservice/SkillSession;->mSessionCode:Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->putSession(Ljava/lang/String;Lcom/oplus/ovoiceskillservice/SkillSession;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "before thread process: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$3;

    invoke-direct {v0, p0, p1}, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$3;-><init>(Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;Lcom/oplus/ovoiceskillservice/SkillSession;)V

    if-eqz p2, :cond_33

    invoke-static {v0}, Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool;->add(Lcom/oplus/ovoiceskillservice/utils/ThreadTask;)V

    goto :goto_36

    :cond_33
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_36
    return-void
.end method

.method private declared-synchronized bindService(Landroid/content/Context;)Z
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->mStatus:Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$ConnectStatus;

    sget-object v1, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$ConnectStatus;->CONNECTED:Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$ConnectStatus;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_11

    const-string p1, "OVSS.OVoiceSkillProxy"

    const-string v0, "already connected, return"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_40

    monitor-exit p0

    return v2

    :cond_11
    :try_start_11
    sget-object v1, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$ConnectStatus;->INIT:Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$ConnectStatus;

    if-ne v0, v1, :cond_1e

    const-string p1, "OVSS.OVoiceSkillProxy"

    const-string v0, "under initializing, waiting"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_40

    monitor-exit p0

    return v2

    :cond_1e
    :try_start_1e
    iput-object v1, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->mStatus:Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$ConnectStatus;

    iput-object p1, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$InnerBinderCallback;

    invoke-direct {v0}, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$InnerBinderCallback;-><init>()V

    invoke-static {p1, v0}, Lcom/oplus/ovoicecommon/BinderPool;->getInstance(Landroid/content/Context;Lcom/oplus/ovoicecommon/IBinderCallback;)Lcom/oplus/ovoicecommon/BinderPool;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->mBinderPool:Lcom/oplus/ovoicecommon/BinderPool;

    if-nez p1, :cond_39

    const-string p1, "OVSS.OVoiceSkillProxy"

    const-string v0, "mBinderPool is null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catchall {:try_start_1e .. :try_end_36} :catchall_40

    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :cond_39
    :try_start_39
    sget-object v0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->sInstance:Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;

    invoke-virtual {p1, v0}, Lcom/oplus/ovoicecommon/BinderPool;->connectAndReleaseLock(Ljava/lang/Object;)Z
    :try_end_3e
    .catchall {:try_start_39 .. :try_end_3e} :catchall_40

    monitor-exit p0

    return v2

    :catchall_40
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static getInstance()Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;
    .registers 1

    sget-object v0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->sInstance:Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;

    return-object v0
.end method

.method private getSessionCodeByIntent(Landroid/content/Intent;)Ljava/lang/String;
    .registers 3

    const-string p0, "OVSS.OVoiceSkillProxy"

    const-string v0, "getSessionCodeByIntent"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_10

    const-string p0, "ovms_session_code"

    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return-object p0
.end method

.method public static getVersionCode(Landroid/content/Context;)J
    .registers 5

    invoke-static {p0}, Lcom/oplus/ovoicecommon/AppUtils;->getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-nez p0, :cond_9

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_9
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "mVersionCode[%d]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OVSS.OVoiceSkillProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getVersionName(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/oplus/ovoicecommon/AppUtils;->getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "mVersionName[%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OVSS.OVoiceSkillProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    return-object p0
.end method

.method private isEmpty(Ljava/lang/String;)Z
    .registers 2

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method private isStatusValid()Z
    .registers 5

    iget-object v0, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->mStatus:Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$ConnectStatus;

    sget-object v1, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$ConnectStatus;->CONNECTED:Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$ConnectStatus;

    const/4 v2, 0x0

    const-string v3, "OVSS.OVoiceSkillProxy"

    if-eq v0, v1, :cond_1c

    const-string v0, "not valid status."

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->mStatus:Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$ConnectStatus;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1c
    iget-object v0, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->mOVoiceSkillService:Lcom/oplus/ovoicemanager/service/IOVoiceSkillService;

    if-nez v0, :cond_26

    const-string p0, "mOVoiceSkillService is null."

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_26
    iget-object p0, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->mContext:Landroid/content/Context;

    if-nez p0, :cond_30

    const-string p0, "mContext is null."

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_30
    const/4 p0, 0x1

    return p0
.end method

.method private newSkillSessionByActionRequest(Lcom/oplus/ovoicemanager/service/ActionRequest;Lcom/oplus/ovoiceskillservice/SkillActionListener;)Z
    .registers 6

    new-instance v0, Lcom/oplus/ovoiceskillservice/SkillSession;

    invoke-virtual {p1}, Lcom/oplus/ovoicemanager/service/ActionRequest;->getSessionCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oplus/ovoicemanager/service/ActionRequest;->getActionId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1, p2}, Lcom/oplus/ovoiceskillservice/SkillSession;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/ovoiceskillservice/SkillActionListener;)V

    const-string p1, "newSkillSessionByActionRequest, mContext: "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OVSS.OVoiceSkillProxy"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->mContext:Landroid/content/Context;

    const/4 p2, 0x0

    if-nez p1, :cond_27

    return p2

    :cond_27
    const-class v1, Landroid/app/Activity;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    const-string v1, "activity"

    if-eqz p1, :cond_38

    iput-object v1, v0, Lcom/oplus/ovoiceskillservice/SkillSession;->mContextType:Ljava/lang/String;

    goto :goto_4d

    :cond_38
    const-class p1, Landroid/app/Service;

    iget-object v2, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_4b

    const-string p1, "service"

    iput-object p1, v0, Lcom/oplus/ovoiceskillservice/SkillSession;->mContextType:Ljava/lang/String;

    goto :goto_4d

    :cond_4b
    iput-object v1, v0, Lcom/oplus/ovoiceskillservice/SkillSession;->mContextType:Ljava/lang/String;

    :goto_4d
    invoke-direct {p0, v0, p2}, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->afterNewSkillSession(Lcom/oplus/ovoiceskillservice/SkillSession;Z)V

    const/4 p0, 0x1

    return p0
.end method

.method private newSkillSessionById(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/ovoiceskillservice/SkillActionListener;)Z
    .registers 8

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const-string v3, "newSkillSession[%s] actionID[%s]"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "OVSS.OVoiceSkillProxy"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_62

    invoke-direct {p0, p1}, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_62

    :cond_1f
    new-instance v0, Lcom/oplus/ovoiceskillservice/SkillSession;

    invoke-direct {v0, p1, p2, p3}, Lcom/oplus/ovoiceskillservice/SkillSession;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/ovoiceskillservice/SkillActionListener;)V

    const-string p1, "newSkillSessionById, mContext: "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-class p1, Landroid/app/Activity;

    iget-object p2, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    const-string p2, "activity"

    if-eqz p1, :cond_49

    iput-object p2, v0, Lcom/oplus/ovoiceskillservice/SkillSession;->mContextType:Ljava/lang/String;

    goto :goto_5e

    :cond_49
    const-class p1, Landroid/app/Service;

    iget-object p3, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_5c

    const-string p1, "service"

    iput-object p1, v0, Lcom/oplus/ovoiceskillservice/SkillSession;->mContextType:Ljava/lang/String;

    goto :goto_5e

    :cond_5c
    iput-object p2, v0, Lcom/oplus/ovoiceskillservice/SkillSession;->mContextType:Ljava/lang/String;

    :goto_5e
    invoke-direct {p0, v0, v2}, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->afterNewSkillSession(Lcom/oplus/ovoiceskillservice/SkillSession;Z)V

    return v2

    :cond_62
    :goto_62
    const-string p0, "mContext or newSkillSession is null"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private newSkillSessionByIntent(Landroid/content/Intent;Lcom/oplus/ovoiceskillservice/SkillActionListener;)Z
    .registers 7

    const-string v0, "OVSS.OVoiceSkillProxy"

    const-string v1, "newSkillSessionByIntent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/oplus/ovoiceskillservice/SkillSession;

    invoke-direct {p0, p1}, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->getSessionCodeByIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, p2}, Lcom/oplus/ovoiceskillservice/SkillSession;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/ovoiceskillservice/SkillActionListener;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "newSkillSessionByIntent, skillActionListener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newSkillSessionByIntent, mContext: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->mContext:Landroid/content/Context;

    if-nez p2, :cond_41

    const/4 p0, 0x0

    return p0

    :cond_41
    const-class v2, Landroid/app/Activity;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    const-string v2, "activity"

    if-eqz p2, :cond_52

    iput-object v2, v1, Lcom/oplus/ovoiceskillservice/SkillSession;->mContextType:Ljava/lang/String;

    goto :goto_67

    :cond_52
    const-class p2, Landroid/app/Service;

    iget-object v3, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_65

    const-string p2, "service"

    iput-object p2, v1, Lcom/oplus/ovoiceskillservice/SkillSession;->mContextType:Ljava/lang/String;

    goto :goto_67

    :cond_65
    iput-object v2, v1, Lcom/oplus/ovoiceskillservice/SkillSession;->mContextType:Ljava/lang/String;

    :goto_67
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_89

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v1, Lcom/oplus/ovoiceskillservice/SkillSession;->mUri:Ljava/lang/String;

    const-string p2, "mUri: "

    invoke-static {p2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v2, v1, Lcom/oplus/ovoiceskillservice/SkillSession;->mUri:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_89
    const-string p2, "ovms_skill_cmd"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a9

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v1, Lcom/oplus/ovoiceskillservice/SkillSession;->mCommand:Ljava/lang/String;

    const-string p2, "mCommand: "

    invoke-static {p2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v2, v1, Lcom/oplus/ovoiceskillservice/SkillSession;->mCommand:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a9
    const-string p2, "ovms_skill_data"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c9

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/oplus/ovoiceskillservice/SkillSession;->mCmdData:Ljava/lang/String;

    const-string p1, "mCmdData: "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, v1, Lcom/oplus/ovoiceskillservice/SkillSession;->mCmdData:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c9
    const/4 p1, 0x1

    invoke-direct {p0, v1, p1}, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->afterNewSkillSession(Lcom/oplus/ovoiceskillservice/SkillSession;Z)V

    return p1
.end method

.method private putSession(Ljava/lang/String;Lcom/oplus/ovoiceskillservice/SkillSession;)V
    .registers 5

    if-eqz p1, :cond_35

    if-nez p2, :cond_5

    goto :goto_35

    :cond_5
    iget-object v0, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->mSessionList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->mSessionList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12
    iget-object v0, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->mSessionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x1e

    if-le v0, v1, :cond_28

    iget-object v0, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->mSessionList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->removeSession(Ljava/lang/String;)V

    :cond_28
    iget-object v0, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->mSessionMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$1;

    invoke-direct {p1, p0, p2}, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$1;-><init>(Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;Lcom/oplus/ovoiceskillservice/SkillSession;)V

    invoke-static {p1}, Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool;->add(Lcom/oplus/ovoiceskillservice/utils/ThreadTask;)V

    :cond_35
    :goto_35
    return-void
.end method

.method private removeSession(Ljava/lang/String;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->mSessionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/ovoiceskillservice/SkillSession;

    invoke-virtual {v0}, Lcom/oplus/ovoiceskillservice/SkillSession;->finish()V

    iget-object v0, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->mSessionList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public deinitialize()V
    .registers 5

    const-string v0, "OVSS.OVoiceSkillProxy"

    const-string v1, "deinitialize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_7
    new-instance v1, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$2;

    invoke-direct {v1, p0}, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$2;-><init>(Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;)V

    invoke-static {v1}, Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool;->add(Lcom/oplus/ovoiceskillservice/utils/ThreadTask;)V

    const-wide/16 v1, 0x1f4

    sget-object v3, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->sInstance:Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;

    invoke-static {v1, v2, v3}, Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool;->shutdownAndWait(JLjava/lang/Object;)V

    iget-object v1, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->localConnectionCallbacks:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1b} :catch_1c

    goto :goto_27

    :catch_1c
    move-exception v1

    const-string v2, "ThreadTaskPool error"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p0, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->localConnectionCallbacks:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    :goto_27
    return-void
.end method

.method public getOVoiceSkillService()Lcom/oplus/ovoicemanager/service/IOVoiceSkillService;
    .registers 1

    sget-object p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->sInstance:Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;

    iget-object p0, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->mOVoiceSkillService:Lcom/oplus/ovoicemanager/service/IOVoiceSkillService;

    return-object p0
.end method

.method public getSession(Ljava/lang/String;)Lcom/oplus/ovoiceskillservice/ISkillSession;
    .registers 2

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    iget-object p0, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/ovoiceskillservice/ISkillSession;

    return-object p0
.end method

.method public initialize(Landroid/content/Context;Lcom/oplus/ovoiceskillservice/OVoiceConnectionCallback;)Z
    .registers 5

    const-string v0, "OVSS.OVoiceSkillProxy"

    const-string v1, "initialize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->localConnectionCallbacks:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    invoke-static {}, Lcom/oplus/ovoiceskillservice/utils/ThreadTaskPool;->start()V

    invoke-direct {p0, p1}, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->bindService(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public initializeByOVoiceSkillService(Landroid/content/Context;Lcom/oplus/ovoicemanager/service/IOVoiceSkillService;Lcom/oplus/ovoiceskillservice/OVoiceConnectionCallback;)Z
    .registers 7

    const-string v0, "OVSS.OVoiceSkillProxy"

    const-string v1, "initializeByOVoiceSkillService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->mStatus:Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$ConnectStatus;

    sget-object v1, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$ConnectStatus;->CONNECTED:Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$ConnectStatus;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_f

    return v2

    :cond_f
    iput-object p1, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->mStatus:Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$ConnectStatus;

    iput-object p2, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->mOVoiceSkillService:Lcom/oplus/ovoicemanager/service/IOVoiceSkillService;

    if-eqz p3, :cond_1f

    iget-object p0, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->localConnectionCallbacks:Ljava/lang/ThreadLocal;

    invoke-virtual {p0, p3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    invoke-interface {p3}, Lcom/oplus/ovoiceskillservice/OVoiceConnectionCallback;->onServiceConnected()V

    :cond_1f
    return v2
.end method

.method public newSkillSession(Landroid/content/Intent;Lcom/oplus/ovoiceskillservice/SkillActionListener;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->newSkillSessionByIntent(Landroid/content/Intent;Lcom/oplus/ovoiceskillservice/SkillActionListener;)Z

    move-result p0

    return p0
.end method

.method public newSkillSession(Lcom/oplus/ovoicemanager/service/ActionRequest;Lcom/oplus/ovoiceskillservice/SkillActionListener;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->newSkillSessionByActionRequest(Lcom/oplus/ovoicemanager/service/ActionRequest;Lcom/oplus/ovoiceskillservice/SkillActionListener;)Z

    move-result p0

    return p0
.end method

.method public newSkillSession(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/ovoiceskillservice/SkillActionListener;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->newSkillSessionById(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/ovoiceskillservice/SkillActionListener;)Z

    move-result p0

    return p0
.end method

.method public registerActionExecutionCallback(Ljava/lang/String;Lcom/oplus/ovoiceskillservice/SkillActionListener;)Z
    .registers 9

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "registerActionExecutionCallback actionIDs[%s]"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "OVSS.OVoiceSkillProxy"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const-string p0, "actionIDs is null or empty"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1d
    if-nez p2, :cond_25

    const-string p0, "skillActionListener is null"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_25
    invoke-direct {p0}, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->isStatusValid()Z

    move-result v1

    if-nez v1, :cond_2c

    return v2

    :cond_2c
    iget-object v1, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oplus/ovoicecommon/AppUtils;->getAppID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/oplus/ovoicecommon/AppUtils;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    aput-object v1, v4, v0

    const-string v5, "registerActionExecutionCallback, packageName[%s]appName[%s]"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_48
    iget-object v4, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->mOVoiceSkillService:Lcom/oplus/ovoicemanager/service/IOVoiceSkillService;

    new-instance v5, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$4;

    invoke-direct {v5, p0, p2}, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$4;-><init>(Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;Lcom/oplus/ovoiceskillservice/SkillActionListener;)V

    invoke-interface {v4, v1, p1, v5}, Lcom/oplus/ovoicemanager/service/IOVoiceSkillService;->registerActionExecutionListener(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/ovoicemanager/service/ISkillListener;)Z
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_52} :catch_53

    goto :goto_65

    :catch_53
    move-exception p0

    new-array p1, v0, [Ljava/lang/Object;

    aput-object v1, p1, v2

    const-string p2, "RemoteException,appID[%s]"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    move v0, v2

    :goto_65
    return v0
.end method

.method public registerActionExecutionCallback(Ljava/util/List;Lcom/oplus/ovoiceskillservice/SkillActionListener;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/oplus/ovoiceskillservice/SkillActionListener;",
            ")Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    const-string v0, ";"

    invoke-static {v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "registerActionExecutionCallback actionIDs[%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OVSS.OVoiceSkillProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2}, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->registerActionExecutionCallback(Ljava/lang/String;Lcom/oplus/ovoiceskillservice/SkillActionListener;)Z

    move-result p0

    return p0
.end method

.method public unregisterActionExecutionCallback()Z
    .registers 7

    const-string v0, "OVSS.OVoiceSkillProxy"

    const-string v1, "unregisterAllActionExecutionCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->isStatusValid()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oplus/ovoicecommon/AppUtils;->getAppID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/oplus/ovoicecommon/AppUtils;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const-string v5, "unregisterAllActionExecutionCallback,packageName[%s]appName[%s]"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_2c
    iget-object p0, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->mOVoiceSkillService:Lcom/oplus/ovoicemanager/service/IOVoiceSkillService;

    invoke-interface {p0, v1}, Lcom/oplus/ovoicemanager/service/IOVoiceSkillService;->unregisterActionExecutionListenerByAppID(Ljava/lang/String;)Z
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_31} :catch_33

    move v2, v4

    goto :goto_44

    :catch_33
    move-exception p0

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v1, v3, v2

    const-string v1, "RemoteException,appID[%s]"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_44
    return v2
.end method

.method public unregisterActionExecutionCallback(Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "unregisterActionExecutionCallback, actionIDs[%s]"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "OVSS.OVoiceSkillProxy"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const-string p0, "actionIDs is null or empty"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1d
    invoke-direct {p0}, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->isStatusValid()Z

    move-result v1

    if-nez v1, :cond_24

    return v2

    :cond_24
    iget-object v1, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oplus/ovoicecommon/AppUtils;->getAppID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/oplus/ovoicecommon/AppUtils;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    aput-object v1, v4, v0

    const-string v5, "unregisterActionExecutionCallback,packageName[%s]appName[%s]"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_40
    iget-object p0, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->mOVoiceSkillService:Lcom/oplus/ovoicemanager/service/IOVoiceSkillService;

    invoke-interface {p0, v1, p1}, Lcom/oplus/ovoicemanager/service/IOVoiceSkillService;->unregisterActionExecutionListener(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_45} :catch_46

    goto :goto_58

    :catch_46
    move-exception p0

    new-array p1, v0, [Ljava/lang/Object;

    aput-object v1, p1, v2

    const-string v0, "RemoteException,appID[%s]"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    move v0, v2

    :goto_58
    return v0
.end method

.method public unregisterActionExecutionCallback(Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    const-string v0, ";"

    invoke-static {v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "unregisterActionExecutionCallback, actionIDs[%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OVSS.OVoiceSkillProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->unregisterActionExecutionCallback(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
