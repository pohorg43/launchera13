.class public Lcom/oplus/fancyicon/SoundManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/fancyicon/SoundManager$SoundOptions;
    }
.end annotation


# static fields
.field private static final MAX_STREAMS:I = 0x8

.field private static final SOUND_100:I = 0x64

.field private static final SOUND_FILE_FOLDER:Ljava/lang/String; = "sounds"

.field private static final TAG:Ljava/lang/String; = "SoundManager"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mInitialized:Z

.field private mPendingOption:Lcom/oplus/fancyicon/SoundManager$SoundOptions;

.field private mPendingSoundMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/oplus/fancyicon/SoundManager$SoundOptions;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayingSoundMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/oplus/fancyicon/SoundManager$SoundOptions;",
            ">;"
        }
    .end annotation
.end field

.field private mResourceManager:Lcom/oplus/fancyicon/content/res/loader/ResourceManager;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oplus/fancyicon/content/res/loader/ResourceManager;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/oplus/fancyicon/SoundManager;->mPendingSoundMap:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/oplus/fancyicon/SoundManager;->mPlayingSoundMap:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/fancyicon/SoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    iput-object p2, p0, Lcom/oplus/fancyicon/SoundManager;->mResourceManager:Lcom/oplus/fancyicon/content/res/loader/ResourceManager;

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/oplus/fancyicon/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method private getMemoryFileDescriptor(Landroid/os/MemoryFile;)Ljava/io/FileDescriptor;
    .registers 5

    :try_start_0
    const-string p0, "android.os.MemoryFile"

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "getFileDescriptor"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {p0, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/FileDescriptor;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    goto :goto_25

    :catch_18
    move-exception p0

    const-string p1, "getMemoryFileDescriptor error : "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "SoundManager"

    invoke-static {p0, p1, v0}, Lcom/android/common/debug/a;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_25
    return-object p0
.end method

.method private declared-synchronized init()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/oplus/fancyicon/SoundManager;->mInitialized:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_34

    if-nez v0, :cond_32

    const/4 v0, 0x1

    :try_start_6
    iput-boolean v0, p0, Lcom/oplus/fancyicon/SoundManager;->mInitialized:Z

    new-instance v1, Landroid/media/SoundPool;

    const/16 v2, 0x8

    const/16 v3, 0x64

    invoke-direct {v1, v2, v0, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v1, p0, Lcom/oplus/fancyicon/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, p0}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_16} :catch_17
    .catchall {:try_start_6 .. :try_end_16} :catchall_34

    goto :goto_32

    :catch_17
    move-exception v0

    :try_start_18
    const-string v1, "SoundManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SoundManager init error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/fancyicon/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32
    .catchall {:try_start_18 .. :try_end_32} :catchall_34

    :cond_32
    :goto_32
    monitor-exit p0

    return-void

    :catchall_34
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isPlayingSound(Ljava/lang/String;)I
    .registers 5

    iget-object v0, p0, Lcom/oplus/fancyicon/SoundManager;->mPlayingSoundMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1f

    iget-object v2, p0, Lcom/oplus/fancyicon/SoundManager;->mPlayingSoundMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    iget-object p0, p0, Lcom/oplus/fancyicon/SoundManager;->mPlayingSoundMap:Landroid/util/SparseArray;

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p0

    return p0

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1f
    const/4 p0, -0x1

    return p0
.end method

.method private isSoundEnable()Z
    .registers 2

    iget-object p0, p0, Lcom/oplus/fancyicon/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method private declared-synchronized loadSoundFromTempFolder(Ljava/lang/String;)I
    .registers 5

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oplus/fancyicon/content/res/ThemeConstants;->CONFIG_LOCK_TEMP_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/fancyicon/SoundManager;->mResourceManager:Lcom/oplus/fancyicon/content/res/loader/ResourceManager;

    const-string v2, "sounds"

    invoke-virtual {v1, p1, v2}, Lcom/oplus/fancyicon/content/res/loader/ResourceManager;->getPathForLanguage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/fancyicon/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result p1
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    monitor-exit p0

    return p1

    :catchall_23
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized loadSoundFromZipFile(Ljava/lang/String;)I
    .registers 11

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/oplus/fancyicon/SoundManager;->mResourceManager:Lcom/oplus/fancyicon/content/res/loader/ResourceManager;

    const-string v1, "sounds"

    invoke-virtual {v0, p1, v1}, Lcom/oplus/fancyicon/content/res/loader/ResourceManager;->getFile(Ljava/lang/String;Ljava/lang/String;)Landroid/os/MemoryFile;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_23

    const-string v0, "SoundManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "the sound does not exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oplus/fancyicon/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_49

    goto :goto_43

    :cond_23
    :try_start_23
    invoke-direct {p0, v0}, Lcom/oplus/fancyicon/SoundManager;->getMemoryFileDescriptor(Landroid/os/MemoryFile;)Ljava/io/FileDescriptor;

    move-result-object v3

    iget-object v2, p0, Lcom/oplus/fancyicon/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    const-wide/16 v4, 0x0

    invoke-virtual {v0}, Landroid/os/MemoryFile;->length()I

    move-result p1

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v2 .. v8}, Landroid/media/SoundPool;->load(Ljava/io/FileDescriptor;JJI)I

    move-result v1
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_35} :catch_3b
    .catchall {:try_start_23 .. :try_end_35} :catchall_39

    :goto_35
    :try_start_35
    invoke-virtual {v0}, Landroid/os/MemoryFile;->close()V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_38} :catch_43
    .catchall {:try_start_35 .. :try_end_38} :catchall_49

    goto :goto_43

    :catchall_39
    move-exception p1

    goto :goto_45

    :catch_3b
    :try_start_3b
    const-string p1, "SoundManager"

    const-string v2, "fail to load sound. "

    invoke-static {p1, v2}, Lcom/oplus/fancyicon/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_39

    goto :goto_35

    :catch_43
    :goto_43
    monitor-exit p0

    return v1

    :goto_45
    :try_start_45
    invoke-virtual {v0}, Landroid/os/MemoryFile;->close()V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_48} :catch_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_49

    :catch_48
    :try_start_48
    throw p1
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_49

    :catchall_49
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized playSoundImp(ILcom/oplus/fancyicon/SoundManager$SoundOptions;)V
    .registers 10

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/oplus/fancyicon/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_7f

    if-nez p2, :cond_9

    iget-object p2, p0, Lcom/oplus/fancyicon/SoundManager;->mPendingOption:Lcom/oplus/fancyicon/SoundManager$SoundOptions;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_81

    :cond_9
    :try_start_9
    iget-boolean v0, p2, Lcom/oplus/fancyicon/SoundManager$SoundOptions;->mKeepCur:Z

    const/4 v1, 0x0

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/oplus/fancyicon/SoundManager;->mPlayingSoundMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/oplus/fancyicon/SoundManager;->mPlayingSoundMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    move v2, v1

    :goto_1d
    if-ge v2, v0, :cond_2d

    iget-object v3, p0, Lcom/oplus/fancyicon/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    iget-object v4, p0, Lcom/oplus/fancyicon/SoundManager;->mPlayingSoundMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/SoundPool;->stop(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :cond_2d
    iget-object v0, p0, Lcom/oplus/fancyicon/SoundManager;->mPlayingSoundMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    :cond_32
    iget-boolean v0, p2, Lcom/oplus/fancyicon/SoundManager$SoundOptions;->mStop:Z

    const/4 v2, -0x1

    if-eqz v0, :cond_4a

    iget-object p1, p2, Lcom/oplus/fancyicon/SoundManager$SoundOptions;->mSound:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/oplus/fancyicon/SoundManager;->isPlayingSound(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v2, :cond_7f

    iget-object p2, p0, Lcom/oplus/fancyicon/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p2, p1}, Landroid/media/SoundPool;->stop(I)V

    iget-object p2, p0, Lcom/oplus/fancyicon/SoundManager;->mPlayingSoundMap:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_7f

    :cond_4a
    iget-object v0, p0, Lcom/oplus/fancyicon/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    iget v3, p2, Lcom/oplus/fancyicon/SoundManager$SoundOptions;->mVolume:F

    const/4 v4, 0x1

    iget-boolean v5, p2, Lcom/oplus/fancyicon/SoundManager$SoundOptions;->mLoop:Z

    if-eqz v5, :cond_55

    move v5, v2

    goto :goto_56

    :cond_55
    move v5, v1

    :goto_56
    const/high16 v6, 0x3f800000  # 1.0f

    move v1, p1

    move v2, v3

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result p1

    iget-object v0, p0, Lcom/oplus/fancyicon/SoundManager;->mPlayingSoundMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_63} :catch_64
    .catchall {:try_start_9 .. :try_end_63} :catchall_81

    goto :goto_7f

    :catch_64
    move-exception p1

    :try_start_65
    const-string p2, "SoundManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playSoundImp error : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/oplus/fancyicon/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7f
    .catchall {:try_start_65 .. :try_end_7f} :catchall_81

    :cond_7f
    :goto_7f
    monitor-exit p0

    return-void

    :catchall_81
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .registers 5

    if-nez p3, :cond_e

    iget-object p1, p0, Lcom/oplus/fancyicon/SoundManager;->mPendingSoundMap:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/fancyicon/SoundManager$SoundOptions;

    invoke-direct {p0, p2, p1}, Lcom/oplus/fancyicon/SoundManager;->playSoundImp(ILcom/oplus/fancyicon/SoundManager$SoundOptions;)V

    goto :goto_2c

    :cond_e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onLoadComplete:  id "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " load fail! status is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "SoundManager"

    invoke-static {p3, p1}, Lcom/oplus/fancyicon/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2c
    iget-object p0, p0, Lcom/oplus/fancyicon/SoundManager;->mPendingSoundMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public declared-synchronized playSound(Ljava/lang/String;Lcom/oplus/fancyicon/SoundManager$SoundOptions;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_be

    invoke-direct {p0}, Lcom/oplus/fancyicon/SoundManager;->isSoundEnable()Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_be

    :cond_f
    iget-boolean v0, p0, Lcom/oplus/fancyicon/SoundManager;->mInitialized:Z

    if-nez v0, :cond_16

    invoke-direct {p0}, Lcom/oplus/fancyicon/SoundManager;->init()V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_c0

    :cond_16
    :try_start_16
    iget-object v0, p0, Lcom/oplus/fancyicon/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_bc

    const-string v0, "SoundManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playSound sound = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "options = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/fancyicon/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/fancyicon/SoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_63

    iget-object p1, p0, Lcom/oplus/fancyicon/SoundManager;->mPendingSoundMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/fancyicon/SoundManager$SoundOptions;

    if-nez p1, :cond_58

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/oplus/fancyicon/SoundManager;->playSoundImp(ILcom/oplus/fancyicon/SoundManager$SoundOptions;)V

    goto :goto_61

    :cond_58
    iget-object p1, p0, Lcom/oplus/fancyicon/SoundManager;->mPendingSoundMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_61} :catch_a1
    .catchall {:try_start_16 .. :try_end_61} :catchall_c0

    :goto_61
    monitor-exit p0

    return-void

    :cond_63
    :try_start_63
    invoke-direct {p0, p1}, Lcom/oplus/fancyicon/SoundManager;->loadSoundFromTempFolder(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_82

    iput-object p2, p0, Lcom/oplus/fancyicon/SoundManager;->mPendingOption:Lcom/oplus/fancyicon/SoundManager$SoundOptions;

    iget-object v1, p0, Lcom/oplus/fancyicon/SoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/oplus/fancyicon/SoundManager;->mPendingSoundMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_bc

    :cond_82
    const-string p2, "SoundManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playSound: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " load fail! soundId is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/oplus/fancyicon/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_a0} :catch_a1
    .catchall {:try_start_63 .. :try_end_a0} :catchall_c0

    goto :goto_bc

    :catch_a1
    move-exception p1

    :try_start_a2
    const-string p2, "SoundManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playSound error : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/oplus/fancyicon/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_bc
    .catchall {:try_start_a2 .. :try_end_bc} :catchall_c0

    :cond_bc
    :goto_bc
    monitor-exit p0

    return-void

    :cond_be
    :goto_be
    monitor-exit p0

    return-void

    :catchall_c0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized release()V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/oplus/fancyicon/SoundManager;->mInitialized:Z

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/oplus/fancyicon/SoundManager;->mSoundPool:Landroid/media/SoundPool;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_69

    const/4 v1, 0x0

    if-eqz v0, :cond_65

    :try_start_a
    iget-object v0, p0, Lcom/oplus/fancyicon/SoundManager;->mPlayingSoundMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    move v2, v1

    :goto_11
    if-ge v2, v0, :cond_2d

    iget-object v3, p0, Lcom/oplus/fancyicon/SoundManager;->mPlayingSoundMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/fancyicon/SoundManager$SoundOptions;

    iget-boolean v3, v3, Lcom/oplus/fancyicon/SoundManager$SoundOptions;->mLoop:Z

    if-eqz v3, :cond_2a

    iget-object v3, p0, Lcom/oplus/fancyicon/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    iget-object v4, p0, Lcom/oplus/fancyicon/SoundManager;->mPlayingSoundMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/SoundPool;->stop(I)V

    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_2d
    iget-object v0, p0, Lcom/oplus/fancyicon/SoundManager;->mPendingSoundMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/oplus/fancyicon/SoundManager;->mPlayingSoundMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/oplus/fancyicon/SoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/oplus/fancyicon/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    iget-object v0, p0, Lcom/oplus/fancyicon/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    iput-object v2, p0, Lcom/oplus/fancyicon/SoundManager;->mSoundPool:Landroid/media/SoundPool;
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_49} :catch_4a
    .catchall {:try_start_a .. :try_end_49} :catchall_69

    goto :goto_65

    :catch_4a
    move-exception v0

    :try_start_4b
    const-string v2, "SoundManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "release error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oplus/fancyicon/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_65
    :goto_65
    iput-boolean v1, p0, Lcom/oplus/fancyicon/SoundManager;->mInitialized:Z
    :try_end_67
    .catchall {:try_start_4b .. :try_end_67} :catchall_69

    :cond_67
    monitor-exit p0

    return-void

    :catchall_69
    move-exception v0

    monitor-exit p0

    throw v0
.end method
