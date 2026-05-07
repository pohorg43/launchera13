.class public Lcom/oplus/compat/os/WaveformEffectNative;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static EFFECT_ALARM_NOTIFICATION:I = 0x0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "WaveformEffectNative"


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "WaveformEffectNative"

    const-string v1, "only support before Q"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static initForQ()Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
