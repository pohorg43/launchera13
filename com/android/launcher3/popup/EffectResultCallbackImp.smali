.class public abstract Lcom/android/launcher3/popup/EffectResultCallbackImp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/effectengine/EffectResultCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/popup/EffectResultCallbackImp$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/popup/EffectResultCallbackImp$Companion;

.field private static final TAG:Ljava/lang/String; = "EffectResultCallbackImp"


# instance fields
.field private mBlurEffect:Lcom/oplus/effectengine/OplusEffect;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/popup/EffectResultCallbackImp$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/popup/EffectResultCallbackImp$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/popup/EffectResultCallbackImp;->Companion:Lcom/android/launcher3/popup/EffectResultCallbackImp$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract effectDone(Landroid/graphics/Bitmap;)V
.end method

.method public onEffectDone(Landroid/graphics/Bitmap;)V
    .registers 4

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/popup/EffectResultCallbackImp;->mBlurEffect:Lcom/oplus/effectengine/OplusEffect;

    const-string v1, "onEffectDone, mBlurEffect = "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EffectResultCallbackImp"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/popup/EffectResultCallbackImp;->mBlurEffect:Lcom/oplus/effectengine/OplusEffect;

    if-nez v0, :cond_17

    goto :goto_1a

    :cond_17
    invoke-virtual {v0}, Lcom/oplus/effectengine/OplusEffect;->destroy()V

    :goto_1a
    invoke-virtual {p0, p1}, Lcom/android/launcher3/popup/EffectResultCallbackImp;->effectDone(Landroid/graphics/Bitmap;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/popup/EffectResultCallbackImp;->mBlurEffect:Lcom/oplus/effectengine/OplusEffect;

    return-void
.end method

.method public final setBlurEffect(Lcom/oplus/effectengine/OplusEffect;)V
    .registers 3

    const-string v0, "blurEffect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/popup/EffectResultCallbackImp;->mBlurEffect:Lcom/oplus/effectengine/OplusEffect;

    return-void
.end method
