.class public Lcom/android/launcher/NewUpdatedAppsManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/NewUpdatedAppsManager$IGreenPointAppsUpdateCallback;,
        Lcom/android/launcher/NewUpdatedAppsManager$NewUpdatedAppsObserver;
    }
.end annotation


# static fields
.field private static final ATLEAST_OREO:Z

.field private static final DEBUG_ENABLE:Z

.field private static final FILE_NEW_UPDATED_APPS_LIST:Ljava/lang/String; = "notLaunchedPkgs.xml"

.field public static final PATH_NEW_UPDATED_APPS_LIST_N:Ljava/lang/String; = "/data/system/"

.field public static final PATH_NEW_UPDATED_APPS_LIST_O:Ljava/lang/String; = "/data/oplus/common/"

.field private static final TAG:Ljava/lang/String; = "NewUpdatedAppsManager"

.field private static volatile sInstance:Lcom/android/launcher/NewUpdatedAppsManager;


# instance fields
.field private mCallback:Lcom/android/launcher/NewUpdatedAppsManager$IGreenPointAppsUpdateCallback;

.field private mIsInit:Z

.field private mNewUpdatedAppPkgNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNewUpdatedAppsObserver:Lcom/android/launcher/NewUpdatedAppsManager$NewUpdatedAppsObserver;

.field private mObserverFilePath:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher/NewUpdatedAppsManager;->DEBUG_ENABLE:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher/NewUpdatedAppsManager;->ATLEAST_OREO:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher/NewUpdatedAppsManager;->sInstance:Lcom/android/launcher/NewUpdatedAppsManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/NewUpdatedAppsManager;->mNewUpdatedAppPkgNames:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/launcher/NewUpdatedAppsManager;->mNewUpdatedAppsObserver:Lcom/android/launcher/NewUpdatedAppsManager$NewUpdatedAppsObserver;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher/NewUpdatedAppsManager;->mIsInit:Z

    iput-object v0, p0, Lcom/android/launcher/NewUpdatedAppsManager;->mObserverFilePath:Ljava/lang/String;

    sget-object v0, Lcom/android/launcher3/util/Executors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/android/launcher/e0;

    invoke-direct {v1, p0}, Lcom/android/launcher/e0;-><init>(Lcom/android/launcher/NewUpdatedAppsManager;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/NewUpdatedAppsManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/NewUpdatedAppsManager;->lambda$new$0()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher/NewUpdatedAppsManager;)Ljava/util/ArrayList;
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/NewUpdatedAppsManager;->readNewUpdatedAppListFromFile()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100()Z
    .registers 1

    sget-boolean v0, Lcom/android/launcher/NewUpdatedAppsManager;->DEBUG_ENABLE:Z

    return v0
.end method

.method public static synthetic access$200(Lcom/android/launcher/NewUpdatedAppsManager;)Lcom/android/launcher/NewUpdatedAppsManager$IGreenPointAppsUpdateCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/NewUpdatedAppsManager;->mCallback:Lcom/android/launcher/NewUpdatedAppsManager$IGreenPointAppsUpdateCallback;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/launcher/NewUpdatedAppsManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/NewUpdatedAppsManager;->getRemovedGreenPointApps(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/launcher/NewUpdatedAppsManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/NewUpdatedAppsManager;->getNewGreenPointApps(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/launcher/NewUpdatedAppsManager;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/NewUpdatedAppsManager;->mNewUpdatedAppPkgNames:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic access$502(Lcom/android/launcher/NewUpdatedAppsManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/NewUpdatedAppsManager;->mNewUpdatedAppPkgNames:Ljava/util/ArrayList;

    return-object p1
.end method

.method public static getInstance()Lcom/android/launcher/NewUpdatedAppsManager;
    .registers 2

    sget-object v0, Lcom/android/launcher/NewUpdatedAppsManager;->sInstance:Lcom/android/launcher/NewUpdatedAppsManager;

    if-nez v0, :cond_17

    const-class v0, Lcom/android/launcher/NewUpdatedAppsManager;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/launcher/NewUpdatedAppsManager;->sInstance:Lcom/android/launcher/NewUpdatedAppsManager;

    if-nez v1, :cond_12

    new-instance v1, Lcom/android/launcher/NewUpdatedAppsManager;

    invoke-direct {v1}, Lcom/android/launcher/NewUpdatedAppsManager;-><init>()V

    sput-object v1, Lcom/android/launcher/NewUpdatedAppsManager;->sInstance:Lcom/android/launcher/NewUpdatedAppsManager;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/android/launcher/NewUpdatedAppsManager;->sInstance:Lcom/android/launcher/NewUpdatedAppsManager;

    return-object v0
.end method

.method private getNewGreenPointApps(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    monitor-enter p0

    if-eqz p1, :cond_28

    :try_start_8
    iget-object v1, p0, Lcom/android/launcher/NewUpdatedAppsManager;->mNewUpdatedAppPkgNames:Ljava/util/ArrayList;

    if-eqz v1, :cond_28

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_10
    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/launcher/NewUpdatedAppsManager;->mNewUpdatedAppPkgNames:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_44

    sget-boolean p0, Lcom/android/launcher/NewUpdatedAppsManager;->DEBUG_ENABLE:Z

    if-eqz p0, :cond_43

    const-string p0, "NewUpdatedAppsManager"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNewGreenPointApps extraNewUpdatedList = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_43
    return-object v0

    :catchall_44
    move-exception p1

    :try_start_45
    monitor-exit p0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw p1
.end method

.method private getRemovedGreenPointApps(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    monitor-enter p0

    if-eqz p1, :cond_26

    :try_start_8
    iget-object v1, p0, Lcom/android/launcher/NewUpdatedAppsManager;->mNewUpdatedAppPkgNames:Ljava/util/ArrayList;

    if-eqz v1, :cond_26

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_42

    sget-boolean p0, Lcom/android/launcher/NewUpdatedAppsManager;->DEBUG_ENABLE:Z

    if-eqz p0, :cond_41

    const-string p0, "NewUpdatedAppsManager"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRemovedGreenPointApps launchedAppList = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_41
    return-object v0

    :catchall_42
    move-exception p1

    :try_start_43
    monitor-exit p0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw p1
.end method

.method private synthetic lambda$new$0()V
    .registers 5

    sget-boolean v0, Lcom/android/launcher/NewUpdatedAppsManager;->ATLEAST_OREO:Z

    if-eqz v0, :cond_9

    const-string v0, "/data/oplus/common/"

    iput-object v0, p0, Lcom/android/launcher/NewUpdatedAppsManager;->mObserverFilePath:Ljava/lang/String;

    goto :goto_d

    :cond_9
    const-string v0, "/data/system/"

    iput-object v0, p0, Lcom/android/launcher/NewUpdatedAppsManager;->mObserverFilePath:Ljava/lang/String;

    :goto_d
    const-string/jumbo v0, "onCreate mObserverFilePath "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/NewUpdatedAppsManager;->mObserverFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NewUpdatedAppsManager"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher/NewUpdatedAppsManager$NewUpdatedAppsObserver;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/launcher/NewUpdatedAppsManager;->mObserverFilePath:Ljava/lang/String;

    const-string/jumbo v3, "notLaunchedPkgs.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, p0, v1}, Lcom/android/launcher/NewUpdatedAppsManager$NewUpdatedAppsObserver;-><init>(Lcom/android/launcher/NewUpdatedAppsManager;Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/launcher/NewUpdatedAppsManager;->mNewUpdatedAppsObserver:Lcom/android/launcher/NewUpdatedAppsManager$NewUpdatedAppsObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    return-void
.end method

.method private readNewUpdatedAppListFromFile()Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "readNewUpdatedAppListFromFile e2 = "

    new-instance v1, Ljava/io/File;

    iget-object p0, p0, Lcom/android/launcher/NewUpdatedAppsManager;->mObserverFilePath:Ljava/lang/String;

    const-string/jumbo v2, "notLaunchedPkgs.xml"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    const-string v2, "NewUpdatedAppsManager"

    const/4 v3, 0x0

    if-nez p0, :cond_1d

    const-string/jumbo p0, "readNewUpdatedAppListFromFile file doesn\'t exist"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_1d
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :try_start_22
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_27} :catch_67
    .catchall {:try_start_22 .. :try_end_27} :catchall_65

    :try_start_27
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    invoke-interface {v1, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :cond_2e
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_51

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "p"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_51

    const-string v6, "att"

    invoke-interface {v1, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_51

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_51} :catch_63
    .catchall {:try_start_27 .. :try_end_51} :catchall_60

    :cond_51
    const/4 v6, 0x1

    if-ne v5, v6, :cond_2e

    :try_start_54
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_57} :catch_59

    move-object v3, p0

    goto :goto_97

    :catch_59
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_8a

    :catchall_60
    move-exception p0

    move-object v3, v4

    goto :goto_98

    :catch_63
    move-exception p0

    goto :goto_69

    :catchall_65
    move-exception p0

    goto :goto_98

    :catch_67
    move-exception p0

    move-object v4, v3

    :goto_69
    :try_start_69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readNewUpdatedAppListFromFile e = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7e
    .catchall {:try_start_69 .. :try_end_7e} :catchall_60

    if-eqz v4, :cond_97

    :try_start_80
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_83} :catch_84

    goto :goto_97

    :catch_84
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_8a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_97
    :goto_97
    return-object v3

    :goto_98
    if-eqz v3, :cond_a2

    :try_start_9a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_9d} :catch_9e

    goto :goto_a2

    :catch_9e
    move-exception v1

    invoke-static {v0, v1, v2}, Lcom/android/launcher/e;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_a2
    :goto_a2
    throw p0
.end method


# virtual methods
.method public isNewUpdatedApp(Ljava/lang/String;)Z
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/android/launcher/NewUpdatedAppsManager;->mNewUpdatedAppPkgNames:Ljava/util/ArrayList;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :cond_24
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_27
    move-exception p1

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_27

    throw p1
.end method

.method public loadNewUpdatedAppPkgNames()V
    .registers 4

    iget-boolean v0, p0, Lcom/android/launcher/NewUpdatedAppsManager;->mIsInit:Z

    if-nez v0, :cond_2f

    monitor-enter p0

    :try_start_5
    invoke-direct {p0}, Lcom/android/launcher/NewUpdatedAppsManager;->readNewUpdatedAppListFromFile()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/NewUpdatedAppsManager;->mNewUpdatedAppPkgNames:Ljava/util/ArrayList;

    sget-boolean v0, Lcom/android/launcher/NewUpdatedAppsManager;->DEBUG_ENABLE:Z

    if-eqz v0, :cond_27

    const-string v0, "NewUpdatedAppsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadNewUpdatedAppPkgNames mNewUpdatedAppPkgNames = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/launcher/NewUpdatedAppsManager;->mNewUpdatedAppPkgNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_2c

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher/NewUpdatedAppsManager;->mIsInit:Z

    goto :goto_2f

    :catchall_2c
    move-exception v0

    :try_start_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v0

    :cond_2f
    :goto_2f
    return-void
.end method

.method public setCallback(Lcom/android/launcher/NewUpdatedAppsManager$IGreenPointAppsUpdateCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/NewUpdatedAppsManager;->mCallback:Lcom/android/launcher/NewUpdatedAppsManager$IGreenPointAppsUpdateCallback;

    return-void
.end method
