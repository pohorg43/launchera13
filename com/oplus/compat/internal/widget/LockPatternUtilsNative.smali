.class public Lcom/oplus/compat/internal/widget/LockPatternUtilsNative;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/compat/internal/widget/LockPatternUtilsNative$LazyHolder;,
        Lcom/oplus/compat/internal/widget/LockPatternUtilsNative$ReflectInfo;
    }
.end annotation


# static fields
.field private static final ACTION_GET_KEYGUARD_STORED_PASSWORD_QUALITY:Ljava/lang/String; = "getKeyguardStoredPasswordQuality"

.field private static final ACTION_IS_LOCK_SCREEN_DISABLED:Ljava/lang/String; = "isLockScreenDisabled"

.field private static final ACTION_IS_SECURE:Ljava/lang/String; = "isSecure"

.field private static final ACTION_SET_LOCK_CREDENTIAL:Ljava/lang/String; = "setLockCredential"

.field private static final ACTION_VERIFY_CREDENTIAL:Ljava/lang/String; = "verifyCredential"

.field private static final CHALLENGE_VALUE:Ljava/lang/String; = "challenge"

.field private static final COMPONENT_NAME:Ljava/lang/String; = "com.android.internal.widget.LockPatternUtils"

.field private static final CREDENTIAL_VALUE:Ljava/lang/String; = "credential"

.field private static final GET_KEYGUARD_STORED_PASSWORD_QUALITY_RESULT:Ljava/lang/String; = "get_keyguard_stored_password_quality_result"

.field private static final IS_LOCK_SCREEN_DISABLED_RESULT:Ljava/lang/String; = "is_lock_screen_disabled_result"

.field private static final IS_SECURE_RESULT:Ljava/lang/String; = "is_secure_result"

.field private static final NEW_CREDENTIAL_VALUE:Ljava/lang/String; = "newCredential"

.field public static PASSWORD_TYPE_KEY:Ljava/lang/String; = null
    .annotation build Lcom/oplus/compat/annotation/Blocked;
    .end annotation
.end field

.field private static final RESULT:Ljava/lang/String; = "result"

.field private static final SAVED_CREDENTIAL_VALUE:Ljava/lang/String; = "savedCredential"

.field private static final SET_LOCK_CREDENTIAL_RESULT:Ljava/lang/String; = "set_lock_credential_result"

.field private static final TAG:Ljava/lang/String; = "LockPatternUtilsNative"

.field private static final USER_HANDLE_VALUE:Ljava/lang/String; = "userHandle"

.field private static final USER_ID_VALUE:Ljava/lang/String; = "userId"

.field private static final VERIFY_CREDENTIAL_RESULT:Ljava/lang/String; = "verify_credential_result"


# instance fields
.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockPatternUtilsWrapperCompat:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    const-string v1, "LockPatternUtilsNative"

    if-eqz v0, :cond_16

    :try_start_8
    const-string v0, "lockscreen.password_type"

    sput-object v0, Lcom/oplus/compat/internal/widget/LockPatternUtilsNative;->PASSWORD_TYPE_KEY:Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_c} :catch_d

    goto :goto_3c

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    :cond_16
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_3c

    const-string v0, "com.android.internal.widget.LockPatternUtils"

    const-string v2, "PASSWORD_TYPE_KEY"

    invoke-static {v0, v2}, Lcom/android/launcher/filter/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/epona/Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/epona/Response;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-virtual {v0}, Lcom/oplus/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/compat/internal/widget/LockPatternUtilsNative;->PASSWORD_TYPE_KEY:Ljava/lang/String;

    goto :goto_3c

    :cond_37
    const-string v0, "Epona Communication failed, static initializer failed."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    :goto_3c
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    goto :goto_3a

    :cond_11
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-static {p1}, Lcom/oplus/compat/internal/widget/LockPatternUtilsNative;->initWrapperCompat(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtilsWrapperCompat:Ljava/lang/Object;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    goto :goto_3a

    :cond_25
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isL()Z

    move-result v0

    if-eqz v0, :cond_33

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    goto :goto_3a

    :cond_33
    const-string p0, "LockPatternUtilsNative"

    const-string p1, "not supported before L"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3a
    return-void
.end method

.method public static getKeyguardStoredPasswordQuality(I)I
    .registers 4
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/PrivilegedApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_2d

    const-string v0, "com.android.internal.widget.LockPatternUtils"

    const-string v1, "getKeyguardStoredPasswordQuality"

    const-string v2, "userHandle"

    invoke-static {v0, v1, v2, p0}, Lcom/oplus/compat/app/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/oplus/epona/Response;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lcom/oplus/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "get_keyguard_stored_password_quality_result"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_21
    const-string v0, "getKeyguardStoredPasswordQuality: "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "LockPatternUtilsNative"

    invoke-static {p0, v0, v1}, Lcom/oplus/compat/app/c;->a(Lcom/oplus/epona/Response;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_65

    :cond_2d
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-static {}, Lcom/oplus/compat/internal/widget/LockPatternUtilsNative$LazyHolder;->access$000()Lcom/oplus/compat/internal/widget/LockPatternUtilsNative;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtilsWrapperCompat:Ljava/lang/Object;

    if-eqz v0, :cond_65

    invoke-static {}, Lcom/oplus/compat/internal/widget/LockPatternUtilsNative$LazyHolder;->access$000()Lcom/oplus/compat/internal/widget/LockPatternUtilsNative;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtilsWrapperCompat:Ljava/lang/Object;

    invoke-static {v0, p0}, Lcom/oplus/compat/internal/widget/LockPatternUtilsNative;->getKeyguardStoredPasswordQualityCompat(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_4c
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isL()Z

    move-result v0

    if-eqz v0, :cond_67

    invoke-static {}, Lcom/oplus/compat/internal/widget/LockPatternUtilsNative$LazyHolder;->access$000()Lcom/oplus/compat/internal/widget/LockPatternUtilsNative;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v0, :cond_65

    invoke-static {}, Lcom/oplus/compat/internal/widget/LockPatternUtilsNative$LazyHolder;->access$000()Lcom/oplus/compat/internal/widget/LockPatternUtilsNative;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result p0

    return p0

    :cond_65
    :goto_65
    const/4 p0, -0x1

    return p0

    :cond_67
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0
.end method

.method private static getKeyguardStoredPasswordQualityCompat(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 2
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method private static initWrapperCompat(Landroid/content/Context;)Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public static isLockPasswordEnabled(I)Z
    .registers 4
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/PrivilegedApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string v0, "com.android.internal.widget.LockPatternUtils"

    const-string v1, "isLockPasswordEnabled"

    const-string v2, "userId"

    invoke-static {v0, v1, v2, p0}, Lcom/oplus/compat/app/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/oplus/epona/Response;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lcom/oplus/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "is_lock_password_enabled_result"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_21
    const-string v0, "isLockPasswordEnabled: "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "LockPatternUtilsNative"

    invoke-static {p0, v0, v1}, Lcom/oplus/compat/app/c;->a(Lcom/oplus/epona/Response;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_2e
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-static {}, Lcom/oplus/compat/internal/widget/LockPatternUtilsNative$LazyHolder;->access$000()Lcom/oplus/compat/internal/widget/LockPatternUtilsNative;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtilsWrapperCompat:Ljava/lang/Object;

    invoke-static {v0, p0}, Lcom/oplus/compat/internal/widget/LockPatternUtilsNative;->isLockPasswordEnabledCompat(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_45
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isO()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-static {}, Lcom/oplus/compat/internal/widget/LockPatternUtilsNative$LazyHolder;->access$000()Lcom/oplus/compat/internal/widget/LockPatternUtilsNative;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled(I)Z

    move-result p0

    return p0

    :cond_56
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0
.end method

.method private static isLockPasswordEnabledCompat(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 2
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public static isLockPatternEnabled(I)Z
    .registers 4
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/PrivilegedApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string v0, "com.android.internal.widget.LockPatternUtils"

    const-string v1, "isLockPatternEnabled"

    const-string v2, "userId"

    invoke-static {v0, v1, v2, p0}, Lcom/oplus/compat/app/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/oplus/epona/Response;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lcom/oplus/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "is_lock_pattern_enabled_result"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_21
    const-string v0, "isLockPatternEnabled: "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "LockPatternUtilsNative"

    invoke-static {p0, v0, v1}, Lcom/oplus/compat/app/c;->a(Lcom/oplus/epona/Response;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_2e
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isO()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-static {}, Lcom/oplus/compat/internal/widget/LockPatternUtilsNative$LazyHolder;->access$000()Lcom/oplus/compat/internal/widget/LockPatternUtilsNative;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result p0

    return p0

    :cond_3f
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string v0, "Not supported before O"

    invoke-direct {p0, v0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isLockScreenDisabled(I)Z
    .registers 4
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/PrivilegedApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string v0, "com.android.internal.widget.LockPatternUtils"

    const-string v1, "isLockScreenDisabled"

    const-string v2, "userId"

    invoke-static {v0, v1, v2, p0}, Lcom/oplus/compat/app/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/oplus/epona/Response;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lcom/oplus/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "is_lock_screen_disabled_result"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_21
    const-string v0, "isLockScreenDisabled: "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "LockPatternUtilsNative"

    invoke-static {p0, v0, v1}, Lcom/oplus/compat/app/c;->a(Lcom/oplus/epona/Response;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_2e
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-static {}, Lcom/oplus/compat/internal/widget/LockPatternUtilsNative$LazyHolder;->access$000()Lcom/oplus/compat/internal/widget/LockPatternUtilsNative;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtilsWrapperCompat:Ljava/lang/Object;

    invoke-static {v0, p0}, Lcom/oplus/compat/internal/widget/LockPatternUtilsNative;->isLockScreenDisabledCompat(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_45
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isM()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-static {}, Lcom/oplus/compat/internal/widget/LockPatternUtilsNative$LazyHolder;->access$000()Lcom/oplus/compat/internal/widget/LockPatternUtilsNative;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result p0

    return p0

    :cond_56
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0
.end method

.method private static isLockScreenDisabledCompat(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 2
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public static isSecure(I)Z
    .registers 4
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x16
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/PrivilegedApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_2d

    const-string v0, "com.android.internal.widget.LockPatternUtils"

    const-string v1, "isSecure"

    const-string v2, "userId"

    invoke-static {v0, v1, v2, p0}, Lcom/oplus/compat/app/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/oplus/epona/Response;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lcom/oplus/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "is_secure_result"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_21
    const-string v0, "isSecure: "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "LockPatternUtilsNative"

    invoke-static {p0, v0, v1}, Lcom/oplus/compat/app/c;->a(Lcom/oplus/epona/Response;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_65

    :cond_2d
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-static {}, Lcom/oplus/compat/internal/widget/LockPatternUtilsNative$LazyHolder;->access$000()Lcom/oplus/compat/internal/widget/LockPatternUtilsNative;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtilsWrapperCompat:Ljava/lang/Object;

    if-eqz v0, :cond_65

    invoke-static {}, Lcom/oplus/compat/internal/widget/LockPatternUtilsNative$LazyHolder;->access$000()Lcom/oplus/compat/internal/widget/LockPatternUtilsNative;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtilsWrapperCompat:Ljava/lang/Object;

    invoke-static {v0, p0}, Lcom/oplus/compat/internal/widget/LockPatternUtilsNative;->isSecureCompat(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_4c
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isL_MR1()Z

    move-result v0

    if-eqz v0, :cond_67

    invoke-static {}, Lcom/oplus/compat/internal/widget/LockPatternUtilsNative$LazyHolder;->access$000()Lcom/oplus/compat/internal/widget/LockPatternUtilsNative;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v0, :cond_65

    invoke-static {}, Lcom/oplus/compat/internal/widget/LockPatternUtilsNative$LazyHolder;->access$000()Lcom/oplus/compat/internal/widget/LockPatternUtilsNative;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p0

    return p0

    :cond_65
    :goto_65
    const/4 p0, 0x0

    return p0

    :cond_67
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0
.end method

.method private static isSecureCompat(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 2
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method private static isTactileFeedbackEnabledCompat(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method private static isVisiblePatternEnabledCompat(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 2
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method private static reportSuccessfulPasswordAttemptCompat(Ljava/lang/Object;I)V
    .registers 2
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    return-void
.end method

.method private static sanitizePasswordCompat(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public static setLockCredential(Lcom/oplus/compat/internal/widget/LockscreenCredentialNative;Lcom/oplus/compat/internal/widget/LockscreenCredentialNative;I)Z
    .registers 5
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/PrivilegedApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_50

    new-instance v0, Lcom/oplus/epona/Request$Builder;

    invoke-direct {v0}, Lcom/oplus/epona/Request$Builder;-><init>()V

    const-string v1, "com.android.internal.widget.LockPatternUtils"

    invoke-virtual {v0, v1}, Lcom/oplus/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object v0

    const-string v1, "setLockCredential"

    invoke-virtual {v0, v1}, Lcom/oplus/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/compat/internal/widget/LockscreenCredentialNative;->getLockscreenCredential()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p0

    const-string v1, "newCredential"

    invoke-virtual {v0, v1, p0}, Lcom/oplus/epona/Request$Builder;->withParcelable(Ljava/lang/String;Landroid/os/Parcelable;)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/oplus/compat/internal/widget/LockscreenCredentialNative;->getLockscreenCredential()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p1

    const-string v0, "savedCredential"

    invoke-virtual {p0, v0, p1}, Lcom/oplus/epona/Request$Builder;->withParcelable(Ljava/lang/String;Landroid/os/Parcelable;)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    const-string p1, "userHandle"

    invoke-virtual {p0, p1, p2}, Lcom/oplus/epona/Request$Builder;->withInt(Ljava/lang/String;I)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/Request$Builder;->build()Lcom/oplus/epona/Request;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/epona/Epona;->newCall(Lcom/oplus/epona/Request;)Lcom/oplus/epona/internal/RealCall;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/internal/RealCall;->execute()Lcom/oplus/epona/Response;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_4e

    invoke-virtual {p0}, Lcom/oplus/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "set_lock_credential_result"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_4e
    const/4 p0, 0x0

    return p0

    :cond_50
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string p1, "not supported before R"

    invoke-direct {p0, p1}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setLockScreenDisabled(ZI)V
    .registers 4
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/PrivilegedApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_2f

    new-instance v0, Lcom/oplus/epona/Request$Builder;

    invoke-direct {v0}, Lcom/oplus/epona/Request$Builder;-><init>()V

    const-string v1, "com.android.internal.widget.LockPatternUtils"

    invoke-virtual {v0, v1}, Lcom/oplus/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object v0

    const-string v1, "setLockScreenDisabled"

    invoke-virtual {v0, v1}, Lcom/oplus/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object v0

    const-string v1, "disable"

    invoke-virtual {v0, v1, p0}, Lcom/oplus/epona/Request$Builder;->withBoolean(Ljava/lang/String;Z)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    const-string v0, "userId"

    invoke-virtual {p0, v0, p1}, Lcom/oplus/epona/Request$Builder;->withInt(Ljava/lang/String;I)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/Request$Builder;->build()Lcom/oplus/epona/Request;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/epona/Epona;->newCall(Lcom/oplus/epona/Request;)Lcom/oplus/epona/internal/RealCall;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/internal/RealCall;->execute()Lcom/oplus/epona/Response;

    return-void

    :cond_2f
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string p1, "Not supported before R"

    invoke-direct {p0, p1}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static setLockoutAttemptDeadlineCompat(Ljava/lang/Object;II)Ljava/lang/Object;
    .registers 3
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public static verifyCredential(Lcom/oplus/compat/internal/widget/LockscreenCredentialNative;JI)[B
    .registers 6
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/PrivilegedApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_40

    new-instance v0, Lcom/oplus/epona/Request$Builder;

    invoke-direct {v0}, Lcom/oplus/epona/Request$Builder;-><init>()V

    const-string v1, "com.android.internal.widget.LockPatternUtils"

    invoke-virtual {v0, v1}, Lcom/oplus/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object v0

    const-string v1, "verifyCredential"

    invoke-virtual {v0, v1}, Lcom/oplus/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/compat/internal/widget/LockscreenCredentialNative;->getLockscreenCredential()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p0

    const-string v1, "credential"

    invoke-virtual {v0, v1, p0}, Lcom/oplus/epona/Request$Builder;->withParcelable(Ljava/lang/String;Landroid/os/Parcelable;)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    const-string v0, "challenge"

    invoke-virtual {p0, v0, p1, p2}, Lcom/oplus/epona/Request$Builder;->withLong(Ljava/lang/String;J)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    const-string p1, "userId"

    invoke-static {p0, p1, p3}, Lcom/oplus/compat/app/f;->a(Lcom/oplus/epona/Request$Builder;Ljava/lang/String;I)Lcom/oplus/epona/Response;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_3e

    invoke-virtual {p0}, Lcom/oplus/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "verify_credential_result"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    :cond_3e
    const/4 p0, 0x0

    return-object p0

    :cond_40
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string p1, "not supported before R"

    invoke-direct {p0, p1}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public isTactileFeedbackEnabled()Z
    .registers 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isT()Z

    move-result v0

    if-nez v0, :cond_5d

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/oplus/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v0, :cond_56

    invoke-static {}, Lcom/oplus/compat/internal/widget/LockPatternUtilsNative$ReflectInfo;->access$200()Lcom/oplus/utils/reflect/RefMethod;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/oplus/utils/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_24
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object p0, p0, Lcom/oplus/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtilsWrapperCompat:Ljava/lang/Object;

    if-eqz p0, :cond_56

    invoke-static {p0}, Lcom/oplus/compat/internal/widget/LockPatternUtilsNative;->isTactileFeedbackEnabledCompat(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_39
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isL()Z

    move-result v0

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/oplus/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v0, :cond_56

    invoke-static {}, Lcom/oplus/compat/internal/widget/LockPatternUtilsNative$ReflectInfo;->access$200()Lcom/oplus/utils/reflect/RefMethod;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/oplus/utils/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_56
    return v1

    :cond_57
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0

    :cond_5d
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0
.end method

.method public isVisiblePatternEnabled(I)Z
    .registers 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object p0, p0, Lcom/oplus/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz p0, :cond_33

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result p0

    return p0

    :cond_f
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object p0, p0, Lcom/oplus/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtilsWrapperCompat:Ljava/lang/Object;

    if-eqz p0, :cond_33

    invoke-static {p0, p1}, Lcom/oplus/compat/internal/widget/LockPatternUtilsNative;->isVisiblePatternEnabledCompat(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_24
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isM()Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object p0, p0, Lcom/oplus/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz p0, :cond_33

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result p0

    return p0

    :cond_33
    const/4 p0, 0x0

    return p0

    :cond_35
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0
.end method

.method public reportSuccessfulPasswordAttempt(I)V
    .registers 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object p0, p0, Lcom/oplus/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz p0, :cond_29

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->reportSuccessfulPasswordAttempt(I)V

    return-void

    :cond_e
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object p0, p0, Lcom/oplus/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtilsWrapperCompat:Ljava/lang/Object;

    if-eqz p0, :cond_29

    invoke-static {p0, p1}, Lcom/oplus/compat/internal/widget/LockPatternUtilsNative;->reportSuccessfulPasswordAttemptCompat(Ljava/lang/Object;I)V

    return-void

    :cond_1c
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isM()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object p0, p0, Lcom/oplus/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz p0, :cond_29

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->reportSuccessfulPasswordAttempt(I)V

    :cond_29
    return-void

    :cond_2a
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0
.end method

.method public sanitizePassword()V
    .registers 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/oplus/compat/internal/widget/LockPatternUtilsNative$ReflectInfo;->access$100()Lcom/oplus/utils/reflect/RefMethod;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/oplus/utils/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_28

    :cond_13
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-static {}, Lcom/oplus/compat/internal/widget/LockPatternUtilsNative$ReflectInfo;->access$100()Lcom/oplus/utils/reflect/RefMethod;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtilsWrapperCompat:Ljava/lang/Object;

    invoke-static {p0}, Lcom/oplus/compat/internal/widget/LockPatternUtilsNative;->sanitizePasswordCompat(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/oplus/utils/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_28
    return-void

    :cond_29
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string v0, "not supported before R"

    invoke-direct {p0, v0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_31
    .catchall {:try_start_0 .. :try_end_31} :catchall_31

    :catchall_31
    move-exception p0

    new-instance v0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0, p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setLockoutAttemptDeadline(II)J
    .registers 4
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object p0, p0, Lcom/oplus/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz p0, :cond_33

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    move-result-wide p0

    return-wide p0

    :cond_f
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object p0, p0, Lcom/oplus/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtilsWrapperCompat:Ljava/lang/Object;

    if-eqz p0, :cond_33

    invoke-static {p0, p1, p2}, Lcom/oplus/compat/internal/widget/LockPatternUtilsNative;->setLockoutAttemptDeadlineCompat(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0

    :cond_24
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isM()Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object p0, p0, Lcom/oplus/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz p0, :cond_33

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    move-result-wide p0

    return-wide p0

    :cond_33
    const-wide/16 p0, -0x1

    return-wide p0

    :cond_36
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0
.end method
