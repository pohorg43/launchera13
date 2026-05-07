.class public final Lcom/android/launcher3/taskbar/Utilities;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V
    .registers 4

    and-int/2addr p1, p2

    if-eqz p1, :cond_6

    invoke-virtual {p0, p3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_6
    return-void
.end method
