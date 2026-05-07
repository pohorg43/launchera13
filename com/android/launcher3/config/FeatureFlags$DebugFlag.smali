.class public Lcom/android/launcher3/config/FeatureFlags$DebugFlag;
.super Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/config/FeatureFlags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DebugFlag"
.end annotation


# instance fields
.field public final description:Ljava/lang/String;

.field public mCurrentValue:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;-><init>(Ljava/lang/String;Z)V

    iput-object p3, p0, Lcom/android/launcher3/config/FeatureFlags$DebugFlag;->description:Ljava/lang/String;

    iget-boolean p1, p0, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->defaultValue:Z

    iput-boolean p1, p0, Lcom/android/launcher3/config/FeatureFlags$DebugFlag;->mCurrentValue:Z

    invoke-static {}, Lcom/android/launcher3/config/FeatureFlags;->access$000()Ljava/util/List;

    move-result-object p1

    monitor-enter p1

    :try_start_e
    invoke-static {}, Lcom/android/launcher3/config/FeatureFlags;->access$000()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p1

    return-void

    :catchall_17
    move-exception p0

    monitor-exit p1
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_17

    throw p0
.end method


# virtual methods
.method public appendProps(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 3

    invoke-super {p0, p1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->appendProps(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", mCurrentValue="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/launcher3/config/FeatureFlags$DebugFlag;->mCurrentValue:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    return-object p1
.end method

.method public get()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/config/FeatureFlags$DebugFlag;->mCurrentValue:Z

    return p0
.end method

.method public initialize(Landroid/content/Context;)V
    .registers 4

    const-string v0, "featureFlags"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->key:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->defaultValue:Z

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/config/FeatureFlags$DebugFlag;->mCurrentValue:Z

    return-void
.end method
