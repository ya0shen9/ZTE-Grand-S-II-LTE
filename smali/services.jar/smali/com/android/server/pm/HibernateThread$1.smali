.class final Lcom/android/server/pm/HibernateThread$1;
.super Ljava/lang/Object;
.source "HibernateThread.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/HibernateThread;->shutdown(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/server/pm/HibernateThread$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/server/pm/HibernateThread$1;->val$context:Landroid/content/Context;

    # invokes: Lcom/android/server/pm/HibernateThread;->beginShutdownSequence(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/android/server/pm/HibernateThread;->access$000(Landroid/content/Context;)V

    .line 188
    return-void
.end method
