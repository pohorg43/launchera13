.class public Lmirror/android/app/ActivityManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static IActivityManagerSingleton:Lcom/oplus/utils/reflect/RefObject;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-class v0, Lmirror/android/app/ActivityManager;

    const-string v1, "android.app.ActivityManager"

    invoke-static {v0, v1}, Lcom/oplus/utils/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
