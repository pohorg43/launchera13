.class public final synthetic Lcom/oplus/quickstep/relay/widget/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/TimeInterpolator;


# static fields
.field public static final synthetic a:Lcom/oplus/quickstep/relay/widget/a;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/quickstep/relay/widget/a;

    invoke-direct {v0}, Lcom/oplus/quickstep/relay/widget/a;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/relay/widget/a;->a:Lcom/oplus/quickstep/relay/widget/a;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .registers 2

    invoke-static {p1}, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->a(F)F

    move-result p0

    return p0
.end method
