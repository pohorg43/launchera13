.class Lcom/android/launcher/filter/GameListHelper$AppInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/filter/GameListHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppInfo"
.end annotation


# instance fields
.field public mPackageName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "mPackageName"
        }
        value = "packageName"
    .end annotation
.end field

.field public mType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "mType"
        }
        value = "type"
    .end annotation
.end field

.field public mUserMarkType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "mUserMarkType"
        }
        value = "userMarkType"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
