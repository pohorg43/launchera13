.class public final Lcom/android/launcher/folder/download/MarketServiceManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/folder/download/MarketServiceManager$Companion;,
        Lcom/android/launcher/folder/download/MarketServiceManager$IMarketServiceClient;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher/folder/download/MarketServiceManager$Companion;

.field private static final TAG:Ljava/lang/String; = "MarketServiceManager"

.field private static final UN_BIND_SERVICE_TIME:J = 0x3e8L

.field private static mInstance:Lcom/android/launcher/folder/download/MarketServiceManager;


# instance fields
.field private final alarm:Lcom/android/launcher3/Alarm;

.field private final serviceClients:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/launcher/folder/download/MarketServiceManager$IMarketServiceClient;",
            ">;"
        }
    .end annotation
.end field

.field private final unbindService:Lcom/android/launcher3/OnAlarmListener;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/folder/download/MarketServiceManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/folder/download/MarketServiceManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/folder/download/MarketServiceManager;->Companion:Lcom/android/launcher/folder/download/MarketServiceManager$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/folder/download/MarketServiceManager;->serviceClients:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lcom/android/launcher3/Alarm;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/launcher3/Alarm;-><init>(Z)V

    iput-object v0, p0, Lcom/android/launcher/folder/download/MarketServiceManager;->alarm:Lcom/android/launcher3/Alarm;

    new-instance v0, Lcom/android/launcher/folder/download/a;

    invoke-direct {v0, p0}, Lcom/android/launcher/folder/download/a;-><init>(Lcom/android/launcher/folder/download/MarketServiceManager;)V

    iput-object v0, p0, Lcom/android/launcher/folder/download/MarketServiceManager;->unbindService:Lcom/android/launcher3/OnAlarmListener;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/folder/download/MarketServiceManager;Lcom/android/launcher3/Alarm;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/MarketServiceManager;->unbindService$lambda-1(Lcom/android/launcher/folder/download/MarketServiceManager;Lcom/android/launcher3/Alarm;)V

    return-void
.end method

.method public static final synthetic access$getMInstance$cp()Lcom/android/launcher/folder/download/MarketServiceManager;
    .registers 1

    sget-object v0, Lcom/android/launcher/folder/download/MarketServiceManager;->mInstance:Lcom/android/launcher/folder/download/MarketServiceManager;

    return-object v0
.end method

.method public static final synthetic access$setMInstance$cp(Lcom/android/launcher/folder/download/MarketServiceManager;)V
    .registers 1

    sput-object p0, Lcom/android/launcher/folder/download/MarketServiceManager;->mInstance:Lcom/android/launcher/folder/download/MarketServiceManager;

    return-void
.end method

.method public static final getInstance()Lcom/android/launcher/folder/download/MarketServiceManager;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher/folder/download/MarketServiceManager;->Companion:Lcom/android/launcher/folder/download/MarketServiceManager$Companion;

    invoke-virtual {v0}, Lcom/android/launcher/folder/download/MarketServiceManager$Companion;->getInstance()Lcom/android/launcher/folder/download/MarketServiceManager;

    move-result-object v0

    return-object v0
.end method

.method private static final unbindService$lambda-1(Lcom/android/launcher/folder/download/MarketServiceManager;Lcom/android/launcher3/Alarm;)V
    .registers 3

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher/folder/download/MarketServiceManager;->serviceClients:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v0, "unBindService, serviceClients.size = "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "MarketServiceManager"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/folder/download/MarketServiceManager;->serviceClients:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_22
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_32

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher/folder/download/MarketServiceManager$IMarketServiceClient;

    invoke-interface {p1}, Lcom/android/launcher/folder/download/MarketServiceManager$IMarketServiceClient;->unbindService()V

    goto :goto_22

    :cond_32
    return-void
.end method


# virtual methods
.method public final addServiceClient(Lcom/android/launcher/folder/download/MarketServiceManager$IMarketServiceClient;)V
    .registers 4

    if-nez p1, :cond_3

    goto :goto_24

    :cond_3
    iget-object v0, p0, Lcom/android/launcher/folder/download/MarketServiceManager;->serviceClients:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    :cond_c
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "addServiceClient client = "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MarketServiceManager"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/folder/download/MarketServiceManager;->serviceClients:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :goto_24
    return-void
.end method

.method public final registerDelayUnBindService(Landroid/content/Context;)V
    .registers 4

    if-nez p1, :cond_3

    goto :goto_2d

    :cond_3
    const/4 p1, 0x0

    iget-object v0, p0, Lcom/android/launcher/folder/download/MarketServiceManager;->serviceClients:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/folder/download/MarketServiceManager$IMarketServiceClient;

    invoke-interface {v1}, Lcom/android/launcher/folder/download/MarketServiceManager$IMarketServiceClient;->isBinding()Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 p1, 0x1

    :cond_1d
    if-eqz p1, :cond_2d

    iget-object p1, p0, Lcom/android/launcher/folder/download/MarketServiceManager;->alarm:Lcom/android/launcher3/Alarm;

    iget-object v0, p0, Lcom/android/launcher/folder/download/MarketServiceManager;->unbindService:Lcom/android/launcher3/OnAlarmListener;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    iget-object p0, p0, Lcom/android/launcher/folder/download/MarketServiceManager;->alarm:Lcom/android/launcher3/Alarm;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    :cond_2d
    :goto_2d
    return-void
.end method

.method public final removeServiceClient(Lcom/android/launcher/folder/download/MarketServiceManager$IMarketServiceClient;)V
    .registers 2

    if-nez p1, :cond_3

    goto :goto_1c

    :cond_3
    iget-object p0, p0, Lcom/android/launcher/folder/download/MarketServiceManager;->serviceClients:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string/jumbo p1, "removeServiceClient client = "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "MarketServiceManager"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1c
    return-void
.end method
