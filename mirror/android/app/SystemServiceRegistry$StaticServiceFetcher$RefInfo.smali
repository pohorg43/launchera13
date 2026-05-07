.class Lmirror/android/app/SystemServiceRegistry$StaticServiceFetcher$RefInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmirror/android/app/SystemServiceRegistry$StaticServiceFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RefInfo"
.end annotation


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "android.app.SystemServiceRegistry$StaticServiceFetcher"

.field private static TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static mCachedInstance:Lcom/oplus/utils/reflect/RefObject;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-class v0, Lmirror/android/app/SystemServiceRegistry$StaticServiceFetcher$RefInfo;

    const-string v1, "android.app.SystemServiceRegistry$StaticServiceFetcher"

    invoke-static {v0, v1}, Lcom/oplus/utils/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lmirror/android/app/SystemServiceRegistry$StaticServiceFetcher$RefInfo;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
