.class Lcom/oplus/compat/internal/widget/LockscreenCredentialNative$RefLockscreenCredentialInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/compat/internal/widget/LockscreenCredentialNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RefLockscreenCredentialInfo"
.end annotation


# static fields
.field private static createNone:Lcom/oplus/utils/reflect/RefMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/utils/reflect/RefMethod<",
            "Lcom/android/internal/widget/LockscreenCredential;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/oplus/compat/internal/widget/LockscreenCredentialNative$RefLockscreenCredentialInfo;

    const-string v1, "com.android.internal.widget.LockscreenCredential"

    invoke-static {v0, v1}, Lcom/oplus/utils/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lcom/oplus/utils/reflect/RefMethod;
    .registers 1

    sget-object v0, Lcom/oplus/compat/internal/widget/LockscreenCredentialNative$RefLockscreenCredentialInfo;->createNone:Lcom/oplus/utils/reflect/RefMethod;

    return-object v0
.end method
