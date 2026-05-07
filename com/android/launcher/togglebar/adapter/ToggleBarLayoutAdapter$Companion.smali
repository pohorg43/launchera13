.class public final Lcom/android/launcher/togglebar/adapter/ToggleBarLayoutAdapter$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/togglebar/adapter/ToggleBarLayoutAdapter;
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

    invoke-direct {p0}, Lcom/android/launcher/togglebar/adapter/ToggleBarLayoutAdapter$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMinMaxColumn()[I
    .registers 1

    invoke-static {}, Lcom/android/launcher/togglebar/adapter/ToggleBarLayoutAdapter;->access$getMIN_MAX_COLUMN$cp()[I

    move-result-object p0

    return-object p0
.end method

.method public final getMinMaxRow()[I
    .registers 1

    invoke-static {}, Lcom/android/launcher/togglebar/adapter/ToggleBarLayoutAdapter;->access$getMIN_MAX_ROW$cp()[I

    move-result-object p0

    return-object p0
.end method
