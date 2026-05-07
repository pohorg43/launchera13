.class public final Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$AnimationValue;,
        Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Duration;,
        Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;,
        Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Properties;,
        Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Colors;,
        Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$THRESHOLD;,
        Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Companion;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils;->Companion:Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final areAnimationsEnabled(Landroid/content/Context;)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils;->Companion:Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Companion;

    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Companion;->areAnimationsEnabled(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method
