.class public final Lcom/android/quickstep/views/OplusRecentsViewImpl$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/views/OplusRecentsViewImpl;
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

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getChangeFromLauncher()Z
    .registers 1

    invoke-static {}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->access$getChangeFromLauncher$cp()Z

    move-result p0

    return p0
.end method

.method public final setChangeFromLauncher(Z)V
    .registers 2

    invoke-static {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->access$setChangeFromLauncher$cp(Z)V

    return-void
.end method
