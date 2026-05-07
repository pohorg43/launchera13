.class public interface abstract Lcom/oplus/smartsdk/CardUICallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/smartsdk/CardUICallback$Companion;
    }
.end annotation


# static fields
.field public static final CODE_PARSE_ERROR:I = 0x1

.field public static final CODE_REFRESH_ERROR:I = 0x2

.field public static final CODE_SUCCESS:I

.field public static final Companion:Lcom/oplus/smartsdk/CardUICallback$Companion;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/oplus/smartsdk/CardUICallback$Companion;->$$INSTANCE:Lcom/oplus/smartsdk/CardUICallback$Companion;

    sput-object v0, Lcom/oplus/smartsdk/CardUICallback;->Companion:Lcom/oplus/smartsdk/CardUICallback$Companion;

    return-void
.end method


# virtual methods
.method public abstract onCall(Landroid/view/View;ILjava/lang/String;)V
    .annotation build Landroidx/annotation/UiThread;
    .end annotation
.end method
