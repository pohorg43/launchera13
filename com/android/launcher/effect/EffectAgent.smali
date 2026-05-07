.class public abstract Lcom/android/launcher/effect/EffectAgent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/effect/EffectAgent$TransformationInfo;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "EffectAgent"


# instance fields
.field public mCanvas:Landroid/graphics/Canvas;

.field public mChildDefaultParams:Lcom/android/launcher/effect/EffectAgent$TransformationInfo;

.field public mHasBackup:Z

.field public mHasSetTempVisiblePagesRange:Z

.field public mIsRtl:Z

.field public mLauncher:Lcom/android/launcher/Launcher;

.field public mTempVisiblePagesRange:[I

.field public mWorkspace:Lcom/android/launcher3/OplusWorkspace;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/effect/EffectAgent;->mHasBackup:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/effect/EffectAgent;->mChildDefaultParams:Lcom/android/launcher/effect/EffectAgent$TransformationInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/effect/EffectAgent;->mHasBackup:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher/effect/EffectAgent;->mChildDefaultParams:Lcom/android/launcher/effect/EffectAgent$TransformationInfo;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/launcher/effect/EffectAgent;->mTempVisiblePagesRange:[I

    iput-boolean v0, p0, Lcom/android/launcher/effect/EffectAgent;->mHasSetTempVisiblePagesRange:Z

    invoke-static {p1}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/Launcher;

    iput-object v0, p0, Lcom/android/launcher/effect/EffectAgent;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher/effect/EffectAgent;->mIsRtl:Z

    return-void
.end method

.method public static getOverrideObject(Ljava/lang/Class;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_36

    :try_start_6
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_1e} :catch_1f
    .catch Ljava/lang/InstantiationException; {:try_start_6 .. :try_end_1e} :catch_1f
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_1e} :catch_1f
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_1e} :catch_1f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_1e} :catch_1f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_1e} :catch_1f

    return-object p0

    :catch_1f
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad overriden class, name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "EffectAgent"

    invoke-static {v0, p2, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_36
    :try_start_36
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0
    :try_end_3a
    .catch Ljava/lang/InstantiationException; {:try_start_36 .. :try_end_3a} :catch_3b
    .catch Ljava/lang/IllegalAccessException; {:try_start_36 .. :try_end_3a} :catch_3b

    return-object p0

    :catch_3b
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public applyDrawChild(Landroid/view/View;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method

.method public applyEffect(ILandroid/graphics/Canvas;)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/effect/EffectAgent;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-boolean v0, p0, Lcom/android/launcher/effect/EffectAgent;->mHasBackup:Z

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/android/launcher/effect/EffectAgent;->backUpParameters()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher/effect/EffectAgent;->mHasBackup:Z

    :cond_f
    iput-object p2, p0, Lcom/android/launcher/effect/EffectAgent;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0, p1}, Lcom/android/launcher/effect/EffectAgent;->applyWorkspaceEffect(I)V

    return-void
.end method

.method public abstract applyWorkspaceEffect(I)V
.end method

.method public backUpParameters()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public canDrawChildOnAgentCanvas()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getEffectClassName()Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public init(Lcom/android/launcher3/OplusWorkspace;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/effect/EffectAgent;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    return-void
.end method

.method public isAnimating()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public recycle()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/launcher/effect/EffectAgent;->mHasBackup:Z

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/android/launcher/effect/EffectAgent;->restoreParameters()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/effect/EffectAgent;->mHasBackup:Z

    :cond_a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/effect/EffectAgent;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    return-void
.end method

.method public restoreParameters()V
    .registers 1

    return-void
.end method

.method public setDrawChildOnAgentCanvasSuccess(Z)V
    .registers 2

    return-void
.end method

.method public setTempVisiblePagesRange([I)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/effect/EffectAgent;->mTempVisiblePagesRange:[I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher/effect/EffectAgent;->mHasSetTempVisiblePagesRange:Z

    return-void
.end method
