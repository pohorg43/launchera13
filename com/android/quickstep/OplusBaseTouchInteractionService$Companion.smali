.class public final Lcom/android/quickstep/OplusBaseTouchInteractionService$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/OplusBaseTouchInteractionService;
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

    invoke-direct {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/android/quickstep/OplusBaseTouchInteractionService;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->access$getSInstance$cp()Lcom/android/quickstep/OplusBaseTouchInteractionService;

    move-result-object p0

    return-object p0
.end method
