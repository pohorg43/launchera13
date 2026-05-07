.class public final synthetic Landroidx/core/location/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic a:Landroidx/core/location/i;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidx/core/location/i;

    invoke-direct {v0}, Landroidx/core/location/i;-><init>()V

    sput-object v0, Landroidx/core/location/i;->a:Landroidx/core/location/i;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-static {p1}, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->d(Ljava/lang/ref/WeakReference;)Z

    move-result p0

    return p0
.end method
