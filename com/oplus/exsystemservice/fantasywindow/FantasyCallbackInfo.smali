.class public Lcom/oplus/exsystemservice/fantasywindow/FantasyCallbackInfo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/exsystemservice/fantasywindow/FantasyCallbackInfo$FantasyWindowType;
    }
.end annotation


# static fields
.field public static final BRACKET_WINDOW_FUNCTION:Ljava/lang/String; = "bracketwindow"

.field public static final COMPACT_WINDOW_FUNCTION:Ljava/lang/String; = "compactwindow"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/exsystemservice/fantasywindow/FantasyCallbackInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final PARALLEL_WINDOW_FUNCTION:Ljava/lang/String; = "magicwindow"


# instance fields
.field private mExtra:Ljava/lang/String;

.field private mMode:I

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/exsystemservice/fantasywindow/FantasyCallbackInfo$1;

    invoke-direct {v0}, Lcom/oplus/exsystemservice/fantasywindow/FantasyCallbackInfo$1;-><init>()V

    sput-object v0, Lcom/oplus/exsystemservice/fantasywindow/FantasyCallbackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/exsystemservice/fantasywindow/FantasyCallbackInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/exsystemservice/fantasywindow/FantasyCallbackInfo;->mMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/exsystemservice/fantasywindow/FantasyCallbackInfo;->mExtra:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/exsystemservice/fantasywindow/FantasyCallbackInfo;->mPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const p0, 0x186a0

    return p0
.end method

.method public getExtra()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/exsystemservice/fantasywindow/FantasyCallbackInfo;->mExtra:Ljava/lang/String;

    return-object p0
.end method

.method public getMode()I
    .registers 1

    iget p0, p0, Lcom/oplus/exsystemservice/fantasywindow/FantasyCallbackInfo;->mMode:I

    return p0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/exsystemservice/fantasywindow/FantasyCallbackInfo;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public setExtra(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/exsystemservice/fantasywindow/FantasyCallbackInfo;->mExtra:Ljava/lang/String;

    return-void
.end method

.method public setMode(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/exsystemservice/fantasywindow/FantasyCallbackInfo;->mMode:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    iget-object p2, p0, Lcom/oplus/exsystemservice/fantasywindow/FantasyCallbackInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/oplus/exsystemservice/fantasywindow/FantasyCallbackInfo;->mMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/oplus/exsystemservice/fantasywindow/FantasyCallbackInfo;->mExtra:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
