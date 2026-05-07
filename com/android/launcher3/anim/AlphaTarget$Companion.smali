.class public final Lcom/android/launcher3/anim/AlphaTarget$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/anim/AlphaTarget;
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

    invoke-direct {p0}, Lcom/android/launcher3/anim/AlphaTarget$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getALPHA()Landroid/util/FloatProperty;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/FloatProperty<",
            "Lcom/android/launcher3/anim/AlphaTarget;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/launcher3/anim/AlphaTarget;->access$getALPHA$cp()Landroid/util/FloatProperty;

    move-result-object p0

    return-object p0
.end method
