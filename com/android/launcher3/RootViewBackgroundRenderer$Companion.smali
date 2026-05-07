.class public final Lcom/android/launcher3/RootViewBackgroundRenderer$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/RootViewBackgroundRenderer;
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

    invoke-direct {p0}, Lcom/android/launcher3/RootViewBackgroundRenderer$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBACKGROUND_ALPHA()Landroid/util/IntProperty;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/IntProperty<",
            "Lcom/android/launcher3/RootViewBackgroundRenderer;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/launcher3/RootViewBackgroundRenderer;->access$getBACKGROUND_ALPHA$cp()Landroid/util/IntProperty;

    move-result-object p0

    return-object p0
.end method
