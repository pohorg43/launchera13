.class public final Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAccInterpolator()Landroid/view/animation/AccelerateInterpolator;
    .registers 1

    invoke-static {}, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;->access$getAccInterpolator$cp()Landroid/view/animation/AccelerateInterpolator;

    move-result-object p0

    return-object p0
.end method
