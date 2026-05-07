.class Lcom/android/quickstep/logging/SettingsChangeLogger$LoggablePref;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/logging/SettingsChangeLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoggablePref"
.end annotation


# instance fields
.field public defaultValue:Z

.field public eventIdOff:I

.field public eventIdOn:I


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/logging/SettingsChangeLogger$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/quickstep/logging/SettingsChangeLogger$LoggablePref;-><init>()V

    return-void
.end method
